CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
-- Create artists table
CREATE TABLE artists (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	name VARCHAR(255) NOT NULL,
	reference VARCHAR(100),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE songs (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	reference VARCHAR(100),
	title VARCHAR(200),
	artist_id UUID REFERENCES artists(id) ON DELETE SET NULL ON UPDATE CASCADE,
	album_name VARCHAR(200),
	external_url VARCHAR(200),
	analyze_success BOOLEAN DEFAULT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX idx_songs_reference ON songs (reference);
CREATE INDEX idx_songs_artist_id ON songs(artist_id);
