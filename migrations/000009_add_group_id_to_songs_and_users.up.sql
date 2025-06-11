CREATE TABLE groups_songs (
	song_id UUID REFERENCES songs(id) ON DELETE CASCADE,
	group_id UUID REFERENCES groups(id) ON DELETE CASCADE,
	PRIMARY KEY (group_id, song_id)
);

CREATE TABLE groups_users (
	user_id UUID REFERENCES users(id) ON DELETE CASCADE,
	group_id UUID REFERENCES groups(id) ON DELETE CASCADE,
	PRIMARY KEY (group_id, user_id)
);

CREATE TABLE groups_artists (
	artist_id UUID REFERENCES artists(id) ON DELETE CASCADE,
	group_id UUID REFERENCES groups(id) ON DELETE CASCADE,
	PRIMARY KEY (group_id, artist_id)
);

CREATE TABLE groups_search (
	search_id UUID REFERENCES search(id) ON DELETE CASCADE,
	group_id UUID REFERENCES groups(id) ON DELETE CASCADE,
	PRIMARY KEY (group_id, search_id)
);

CREATE INDEX idx_groups_songs_song_id ON groups_songs (song_id);
CREATE INDEX idx_groups_users_user_id ON groups_users (user_id);
CREATE INDEX idx_groups_artists_artist_id ON groups_artists (artist_id);
CREATE INDEX idx_groups_search_search_id ON groups_search (search_id);
