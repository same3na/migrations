CREATE TABLE clusters (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	description VARCHAR(100),
	clusters_nb INT NOT NULL CHECK (clusters_nb >= 0),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
