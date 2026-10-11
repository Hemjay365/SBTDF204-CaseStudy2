SELECT id AS url_id, visit_count, typed_count, hidden,
       strftime('%Y-%m-%d %H:%M:%f', (last_visit_time/1000000.0) - 11644473600, 'unixepoch') AS last_visit_utc,
       title, url
FROM urls ORDER BY last_visit_time;
