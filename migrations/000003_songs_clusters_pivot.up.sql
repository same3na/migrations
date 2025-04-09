CREATE TABLE cluster_songs (
    cluster_id UUID NOT NULL,
    song_id UUID NOT NULL,
		cluster int,
		favorite BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (cluster_id, song_id),
    CONSTRAINT fk_cluster FOREIGN KEY (cluster_id) REFERENCES clusters (id) ON DELETE CASCADE,
    CONSTRAINT fk_song FOREIGN KEY (song_id) REFERENCES songs (id) ON DELETE CASCADE
);
