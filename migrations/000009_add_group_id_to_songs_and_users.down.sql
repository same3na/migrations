DROP TABLE if exists groups_songs;
DROP TABLE if exists groups_users;
DROP TABLE if exists groups_artists;
DROP TABLE if exists groups_search;

DROP INDEX IF EXISTS idx_groups_songs_song_id;
DROP INDEX IF EXISTS idx_groups_users_user_id;
DROP INDEX IF EXISTS idx_groups_artists_artist_id;
DROP INDEX IF EXISTS idx_groups_search_search_id;
