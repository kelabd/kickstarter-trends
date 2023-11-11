SELECT
  sub_category.name AS subcategory_name,
  SUM(campaign.pledged) AS total_pledged
FROM campaign
JOIN sub_category ON campaign.sub_category_id = sub_category.id
JOIN currency ON campaign.currency_id = currency.id
-- Perform currency conversion here if needed
GROUP BY sub_category.name
ORDER BY total_pledged DESC
LIMIT 3;

SELECT
  sub_category.name AS subcategory_name,
  SUM(campaign.pledged) AS total_pledged
FROM campaign
JOIN sub_category ON campaign.sub_category_id = sub_category.id
JOIN currency ON campaign.currency_id = currency.id
-- Perform currency conversion here if needed
GROUP BY sub_category.name
ORDER BY total_pledged ASC
LIMIT 3;
