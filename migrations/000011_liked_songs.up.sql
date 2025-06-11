CREATE TABLE users_liked_songs (
    user_id UUID NOT NULL,
    song_id UUID NOT NULL,
    PRIMARY KEY (user_id, song_id),
    CONSTRAINT fk_users_liked_songs_song_id FOREIGN KEY (song_id) REFERENCES songs (id) ON DELETE CASCADE,
    CONSTRAINT fk_users_liked_songs_user_id FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);
