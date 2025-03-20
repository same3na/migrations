CREATE TABLE song_features (
  song_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  genre JSONB,
  mood JSONB,
  aggressive INT,
  happy INT,
  sad INT,
  relaxed INT,
  engagement INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_song_features_song_id FOREIGN KEY (song_id)    
      REFERENCES songs(id) ON DELETE CASCADE               
);

