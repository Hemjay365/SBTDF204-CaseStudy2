SELECT d.id AS download_id, d.guid, d.target_path, d.current_path,
       strftime('%Y-%m-%d %H:%M:%f', (d.start_time/1000000.0) - 11644473600, 'unixepoch') AS start_utc,
       strftime('%Y-%m-%d %H:%M:%f', (d.end_time/1000000.0) - 11644473600, 'unixepoch') AS end_utc,
       strftime('%Y-%m-%d %H:%M:%f', (d.last_access_time/1000000.0) - 11644473600, 'unixepoch') AS last_access_utc,
       d.received_bytes, d.total_bytes, d.state, d.danger_type, d.interrupt_reason, d.opened,
       d.mime_type, d.original_mime_type, d.referrer, d.site_url, d.tab_url, d.tab_referrer_url,
       hex(d.hash) AS hash_hex
FROM downloads AS d ORDER BY d.start_time;
SELECT id, chain_index, url FROM downloads_url_chains ORDER BY id, chain_index;
