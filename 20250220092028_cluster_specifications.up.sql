CREATE TABLE cluster_specifications (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	cluster_id UUID NOT NULL,
	type VARCHAR(255) NOT NULL,
	song_ids TEXT[],
	CONSTRAINT fk_cluster FOREIGN KEY (cluster_id) REFERENCES clusters (id) ON DELETE CASCADE
);
