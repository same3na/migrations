CREATE TABLE IF NOT EXISTS classifications (
    id UUID PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    songs JSONB NOT NULL, -- Array of song IDs as JSONB
    features JSONB NOT NULL, -- Your clustered feature vector or labels
		is_ai_generated BOOLEAN NOT NULL DEFAULT FALSE,
    group_id UUID NOT NULL REFERENCES groups(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- Optional: index for faster JSONB search
CREATE INDEX IF NOT EXISTS idx_classifications_group_id ON classifications(group_id);
CREATE INDEX IF NOT EXISTS idx_classifications_songs ON classifications USING GIN (songs);
CREATE INDEX IF NOT EXISTS idx_classifications_features ON classifications USING GIN (features);
CREATE INDEX IF NOT EXISTS idx_classifications_is_ai_generated ON classifications(is_ai_generated);
