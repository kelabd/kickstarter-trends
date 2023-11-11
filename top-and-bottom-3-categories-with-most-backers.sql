SELECT
  category.name,
  SUM(campaign.backers) AS total_backers
FROM category
JOIN sub_category ON category.id = sub_category.category_id
JOIN campaign ON sub_category.id = campaign.sub_category_id
GROUP BY sub_category.name
ORDER BY total_backers DESC
LIMIT 3;

SELECT
  category.name,
  SUM(campaign.backers) AS total_backers
FROM category
JOIN sub_category ON category.id = sub_category.category_id
JOIN campaign ON sub_category.id = campaign.sub_category_id
GROUP BY sub_category.name
ORDER BY total_backers ASC
LIMIT 3;

