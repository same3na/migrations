-- Drop the indexes first (Postgres requires dropping indexes before dropping the table)

DROP INDEX IF EXISTS idx_classifications_group_id;
DROP INDEX IF EXISTS idx_classifications_songs;
DROP INDEX IF EXISTS idx_classifications_features;
DROP INDEX IF EXISTS idx_classifications_is_ai_generated;

-- Then drop the table

DROP TABLE IF EXISTS classifications;
