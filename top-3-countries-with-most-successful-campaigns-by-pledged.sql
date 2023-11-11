SELECT
  country.name AS country_name,
  SUM(campaign.pledged) AS total_pledged,
  COUNT(campaign.id) AS num_campaigns_backed
FROM campaign
JOIN country ON campaign.country_id = country.id
WHERE campaign.outcome = 'successful'
GROUP BY country.name
ORDER BY total_pledged DESC
LIMIT 3;
