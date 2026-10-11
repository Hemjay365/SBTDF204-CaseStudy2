SELECT v.id AS visit_id,
       u.id AS url_id,
       strftime('%Y-%m-%d %H:%M:%f', (v.visit_time/1000000.0) - 11644473600, 'unixepoch') AS visit_utc,
       v.from_visit,
       v.transition,
       (v.transition & 255) AS core_type,
       CASE (v.transition & 255)
         WHEN 0 THEN 'LINK' WHEN 1 THEN 'TYPED' WHEN 2 THEN 'AUTO_BOOKMARK'
         WHEN 3 THEN 'AUTO_SUBFRAME' WHEN 4 THEN 'MANUAL_SUBFRAME'
         WHEN 5 THEN 'GENERATED(omnibox)' WHEN 6 THEN 'START_PAGE'
         WHEN 7 THEN 'FORM_SUBMIT' WHEN 8 THEN 'RELOAD'
         WHEN 9 THEN 'KEYWORD' WHEN 10 THEN 'KEYWORD_GENERATED'
         ELSE 'OTHER' END AS core_name,
       printf('0x%08X', v.transition & 4294967040) AS qualifiers,
       (v.transition & 268435456  <> 0) AS chain_start,
       (v.transition & 536870912  <> 0) AS chain_end,
       (v.transition & 1073741824 <> 0) AS client_redirect,
       (v.transition & 2147483648 <> 0) AS server_redirect,
       v.visit_duration/1000.0 AS duration_ms,
       u.title,
       u.url
FROM visits AS v
JOIN urls AS u ON v.url = u.id
ORDER BY v.visit_time;
