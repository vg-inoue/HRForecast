
CREATE TABLE IF NOT EXISTS metrics (
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    service_name TEXT NOT NULL,
    section_name TEXT NOT NULL,
    graph_name   TEXT NOT NULL,
    sort         INTEGER NOT NULL DEFAULT 0,
    meta         TEXT NOT NULL,
    created_at   DATETIME NOT NULL,
    updated_at   TIMESTAMP DEFAULT (DATETIME('now', 'localtime')),
    UNIQUE (service_name, section_name, graph_name)
);

CREATE TABLE IF NOT EXISTS data (
    metrics_id   INTEGER NOT NULL,
    datetime     TEXT NOT NULL,
    number       INTEGER NOT NULL,
    updated_at   TIMESTAMP DEFAULT (DATETIME('now', 'localtime')),
    PRIMARY KEY (metrics_id, datetime)
);

CREATE INDEX data_idx1 ON data(datetime);

CREATE TABLE IF NOT EXISTS complex (
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    service_name TEXT NOT NULL,
    section_name TEXT NOT NULL,
    graph_name   TEXT NOT NULL,
    sort         INTEGER NOT NULL DEFAULT 0,
    meta         TEXT NOT NULL,
    created_at   DATETIME NOT NULL,
    updated_at   TIMESTAMP DEFAULT (DATETIME('now', 'localtime')),
    UNIQUE (service_name, section_name, graph_name)
);

