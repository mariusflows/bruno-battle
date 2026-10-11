-- Run once in Supabase → SQL Editor → New query → Run.
-- Auth: enable Email OTP / Magic Link in Supabase Authentication.
-- Row-level security is mandatory: each family account manages only its own profiles.
create table if not exists public.profiles (
  id uuid primary key,
  owner_id uuid not null references auth.users(id) on delete cascade,
  name text not null check (char_length(name) between 1 and 24),
  avatar text not null default '🥷',
  progress jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
create index if not exists profiles_owner_idx on public.profiles(owner_id);
alter table public.profiles enable row level security;

drop policy if exists profiles_read_self on public.profiles;
drop policy if exists profiles_insert_self on public.profiles;
drop policy if exists profiles_update_self on public.profiles;
drop policy if exists profiles_delete_self on public.profiles;
create policy profiles_read_self on public.profiles for select to authenticated using (owner_id=(select auth.uid()));
create policy profiles_insert_self on public.profiles for insert to authenticated with check (owner_id=(select auth.uid()));
create policy profiles_update_self on public.profiles for update to authenticated using (owner_id=(select auth.uid())) with check (owner_id=(select auth.uid()));
create policy profiles_delete_self on public.profiles for delete to authenticated using (owner_id=(select auth.uid()));

create table if not exists public.battle_results (
  id uuid primary key,
  owner_id uuid not null references auth.users(id) on delete cascade,
  profile_id uuid not null references public.profiles(id) on delete cascade,
  nickname text not null check (char_length(nickname) between 1 and 24),
  unit int not null check (unit between 1 and 8),
  opponent int not null check (opponent between 0 and 2),
  points int not null check (points between 0 and 50000),
  accuracy int not null check (accuracy between 0 and 100),
  seconds int not null check (seconds between 1 and 86400),
  finished_at timestamptz not null default now()
);
create index if not exists battles_owner_idx on public.battle_results(owner_id);
create index if not exists battles_ranking_idx on public.battle_results(points desc);
alter table public.battle_results enable row level security;

drop policy if exists results_read_authenticated on public.battle_results;
drop policy if exists results_insert_self on public.battle_results;
drop policy if exists results_delete_self on public.battle_results;
-- Note: all logged-in accounts can read scoreboard rows, including nickname and timestamps.
create policy results_read_authenticated on public.battle_results for select to authenticated using (true);
create policy results_insert_self on public.battle_results for insert to authenticated
with check (owner_id=(select auth.uid()) and exists (
  select 1 from public.profiles p where p.id=profile_id and p.owner_id=(select auth.uid())
));
create policy results_delete_self on public.battle_results for delete to authenticated using (owner_id=(select auth.uid()));

grant select,insert,update,delete on public.profiles to authenticated;
grant select,insert,delete on public.battle_results to authenticated;
revoke all on public.profiles from anon;
revoke all on public.battle_results from anon;

-- Upgrade older schemas that still limited the app to six Units.
alter table public.battle_results drop constraint if exists battle_results_unit_check;
alter table public.battle_results add constraint battle_results_unit_check check (unit between 1 and 8);
