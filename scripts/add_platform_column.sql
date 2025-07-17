-- Script para adicionar a coluna 'platform' em todas as tabelas de artefatos e requests
-- Idempotente: só adiciona se não existir

DO $$
BEGIN
    -- requests
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='requests' AND column_name='platform') THEN
        ALTER TABLE requests ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE requests SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- epics
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='epics' AND column_name='platform') THEN
        ALTER TABLE epics ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE epics SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- features
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='features' AND column_name='platform') THEN
        ALTER TABLE features ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE features SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- user_stories
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='user_stories' AND column_name='platform') THEN
        ALTER TABLE user_stories ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE user_stories SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- tasks
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='tasks' AND column_name='platform') THEN
        ALTER TABLE tasks ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE tasks SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- bugs
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='bugs' AND column_name='platform') THEN
        ALTER TABLE bugs ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE bugs SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- issues
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='issues' AND column_name='platform') THEN
        ALTER TABLE issues ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE issues SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- pbis
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='pbis' AND column_name='platform') THEN
        ALTER TABLE pbis ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE pbis SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- test_cases
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='test_cases' AND column_name='platform') THEN
        ALTER TABLE test_cases ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE test_cases SET platform = 'azure' WHERE platform IS NULL;
    END IF;

    -- wbs
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='wbs' AND column_name='platform') THEN
        ALTER TABLE wbs ADD COLUMN platform VARCHAR(50) NULL;
        UPDATE wbs SET platform = 'azure' WHERE platform IS NULL;
    END IF;
END $$; 