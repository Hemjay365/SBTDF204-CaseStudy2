PRAGMA page_size;
PRAGMA page_count;
PRAGMA freelist_count;
PRAGMA encoding;
PRAGMA integrity_check;
SELECT * FROM meta;
SELECT source, COUNT(*) AS visits FROM visit_source GROUP BY source;
