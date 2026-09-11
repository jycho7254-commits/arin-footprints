-- ═══ 김아린 성공기 — Supabase 테이블 ═══
-- 실행: SQL Editor → 한 줄씩 (붙여넣기 깨짐 방지)

create table if not exists arin_photos (id bigint generated always as identity primary key, created_at timestamptz default now(), photo_date date not null, memo text, image_data text not null);

create table if not exists arin_diary (id bigint generated always as identity primary key, created_at timestamptz default now(), text text not null);

alter table arin_photos enable row level security;
alter table arin_diary enable row level security;

create policy "arin_photos_all" on arin_photos for all using (true) with check (true);

create policy "arin_diary_all" on arin_diary for all using (true) with check (true);
