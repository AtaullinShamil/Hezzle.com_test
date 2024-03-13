CREATE TABLE IF NOT EXISTS clickhouse.goods (
    Id Int32,
    ProjectId Int32,
    Name String,
    Description String,
    Priority Int32,
    Removed UInt8,
    EventTime DateTime
) ENGINE = MergeTree()
ORDER BY (Id, ProjectId);

CREATE INDEX IF NOT EXISTS idx_goods_parameters ON clickhouse.goods (Id, ProjectId, Name) TYPE minmax GRANULARITY 1;
