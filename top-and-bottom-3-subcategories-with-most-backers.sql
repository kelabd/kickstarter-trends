SELECT
  sub_category.name AS subcategory_name,
  SUM(campaign.backers) AS total_backers
FROM sub_category
JOIN campaign ON sub_category.id = campaign.sub_category_id
GROUP BY subcategory_name
ORDER BY total_backers DESC
LIMIT 3;

SELECT
  sub_category.name AS subcategory_name,
  SUM(campaign.backers) AS total_backers
FROM sub_category
JOIN campaign ON sub_category.id = campaign.sub_category_id
GROUP BY subcategory_name
ORDER BY total_backers ASC
LIMIT 3;
