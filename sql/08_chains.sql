WITH RECURSIVE chain(id, root, depth) AS (
  SELECT id, id, 0 FROM visits WHERE from_visit = 0
  UNION ALL
  SELECT v.id, c.root, c.depth + 1 FROM visits AS v JOIN chain AS c ON v.from_visit = c.id
)
SELECT root AS chain_root, COUNT(*) AS n_visits, group_concat(id, ' > ') AS visit_path
FROM (SELECT * FROM chain ORDER BY root, depth, id)
GROUP BY root ORDER BY root;

SELECT 'orphan from_visit' AS check_name, id FROM visits
WHERE from_visit <> 0 AND from_visit NOT IN (SELECT id FROM visits);

SELECT id AS visit_id, opener_visit FROM visits WHERE opener_visit <> 0;
