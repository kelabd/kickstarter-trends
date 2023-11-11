SELECT
  c.name AS category_name,
  SUM(campaign.pledged) AS total_pledged
FROM category c
JOIN sub_category sc ON c.id = sc.category_id
JOIN campaign ON sc.id = campaign.sub_category_id
GROUP BY c.name
ORDER BY total_pledged DESC
LIMIT 3;

SELECT
  c.name AS category_name,
  SUM(campaign.pledged) AS total_pledged
FROM category c
JOIN sub_category sc ON c.id = sc.category_id
JOIN campaign ON sc.id = campaign.sub_category_id
GROUP BY c.name
ORDER BY total_pledged ASC
LIMIT 3;
