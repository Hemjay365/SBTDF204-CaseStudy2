SELECT substr(replace(replace(url,'https://',''),'http://',''), 1,
       instr(replace(replace(url,'https://',''),'http://','') || '/', '/') - 1) AS host,
       COUNT(*) AS urls, SUM(visit_count) AS total_visits
FROM urls GROUP BY host ORDER BY total_visits DESC;
