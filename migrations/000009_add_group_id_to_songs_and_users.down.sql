ALTER TABLE "songs"
DROP CONSTRAINT songs_group_id_fk_group,
DROP COLUMN group_id;

alter table "users"
drop constraint users_group_id_fk_group,
drop column group_id;

alter table "artists"
drop constraint artists_group_id_fk_group,
drop column group_id;

alter table "search"
drop constraint search_group_id_fk_group,
drop column group_id;
