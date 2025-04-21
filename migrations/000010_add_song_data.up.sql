CREATE TABLE song_data (
  song_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  data JSONB,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_song_data_song_id FOREIGN KEY (song_id)    
      REFERENCES songs(id) ON DELETE CASCADE               
);

