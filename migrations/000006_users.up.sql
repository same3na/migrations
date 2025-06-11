CREATE TABLE users (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
	username VARCHAR(100) UNIQUE,
	password VARCHAR(100)
);
