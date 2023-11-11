SELECT
  MEDIAN(goal) AS median_goal
FROM campaign
WHERE outcome = 'successful’
AND
sub_category_id = 14
AND
GOAL >= 15000
