\c swimlane
CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;
CREATE EXTENSION IF NOT EXISTS plpython3u;
CREATE OR REPLACE FUNCTION public.fuzzy_hash(TEXT) RETURNS TEXT AS '/usr/lib/postgresql/14/lib/ssdeep_psql.so', 'pg_fuzzy_hash' LANGUAGE C;
CREATE OR REPLACE FUNCTION public.fuzzy_compare(TEXT, TEXT) RETURNS INTEGER AS '/usr/lib/postgresql/14/lib/ssdeep_psql.so', 'pg_fuzzy_compare' LANGUAGE C;
CREATE OR REPLACE FUNCTION public.fuzzy_hash_compare(TEXT, TEXT) RETURNS INTEGER AS '/usr/lib/postgresql/14/lib/ssdeep_psql.so', 'pg_fuzzy_hash_compare' LANGUAGE C;
CREATE OR REPLACE FUNCTION public.tlsh_compare(TEXT, TEXT) RETURNS INTEGER AS '/usr/lib/postgresql/14/lib/tlsh_psql.so', 'pg_tlsh_compare' LANGUAGE C;
SELECT * FROM pg_extension;
SELECT routine_name AS function_name FROM information_schema.routines WHERE routine_type = 'FUNCTION' AND routine_schema = 'public';