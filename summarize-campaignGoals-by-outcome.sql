SELECT
  outcome,
  COUNT(*) AS num_campaigns,
  AVG(goal) AS avg_goal,
  MIN(goal) AS min_goal,
  MAX(goal) AS max_goal,
  SUM(goal) AS total_goal
FROM campaign
GROUP BY outcome;