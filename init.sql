CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS documents (
  id bigserial PRIMARY KEY,
  embedding vector,
  "pageContent" text,
  metadata jsonb,
  created_at timestamptz DEFAULT now()
);
