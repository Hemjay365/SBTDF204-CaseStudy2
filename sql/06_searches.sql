SELECT k.url_id, k.term, u.url
FROM keyword_search_terms AS k JOIN urls AS u ON k.url_id = u.id
ORDER BY k.url_id;
