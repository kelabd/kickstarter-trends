SELECT
	campaign.name AS company_name,
	SUM(campaign.pledged) AS total_pledged,
	SUM(campaign.backers) AS total_backers
FROM campaign
	JOIN sub_category ON 
		campaign.sub_category_id = sub_category.id
WHERE sub_category.name = 'Tabletop Games'
GROUP BY campaign.name
ORDER BY total_pledged DESC;
