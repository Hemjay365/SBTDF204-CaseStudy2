SELECT name FROM sqlite_master WHERE type = 'table' ORDER BY name;
PRAGMA table_info(urls);
PRAGMA table_info(visits);
PRAGMA table_info(downloads);
PRAGMA table_info(downloads_url_chains);
SELECT 'urls' AS tbl, COUNT(*) FROM urls
UNION ALL SELECT 'visits', COUNT(*) FROM visits
UNION ALL SELECT 'downloads', COUNT(*) FROM downloads
UNION ALL SELECT 'downloads_url_chains', COUNT(*) FROM downloads_url_chains;
