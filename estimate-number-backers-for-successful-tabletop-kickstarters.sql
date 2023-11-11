SELECT
  15000 / AVG(pledged / backers) AS estimated_backers_needed
FROM campaign
WHERE outcome = 'successful'
AND
sub_category_id = 14
AND goal >= 15000
