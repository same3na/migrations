ALTER TABLE "songs"
ADD COLUMN group_id UUID DEFAULT NULL,
ADD CONSTRAINT songs_group_id_fk_group
FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE;

ALTER TABLE "users"
ADD COLUMN group_id UUID DEFAULT NULL,
ADD CONSTRAINT users_group_id_fk_group
FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE;

ALTER TABLE "artists"
ADD COLUMN group_id UUID DEFAULT NULL,
ADD CONSTRAINT artists_group_id_fk_group
FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE;

ALTER TABLE "search"
ADD COLUMN group_id UUID DEFAULT NULL,
ADD CONSTRAINT search_group_id_fk_group
FOREIGN KEY (group_id) REFERENCES groups(id) ON DELETE CASCADE;
