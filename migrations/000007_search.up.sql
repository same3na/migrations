CREATE TABLE search (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	artist_reference VARCHAR(100) UNIQUE,
	artist_name VARCHAR(200),
	search_succeded BOOLEAN DEFAULT NULL,
	download_succeded BOOLEAN DEFAULT NULL,
	total_songs INT DEFAULT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
