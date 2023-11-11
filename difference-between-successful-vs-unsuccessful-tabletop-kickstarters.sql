WITH successful_campaigns AS (
  SELECT goal, pledged
  FROM campaign
  WHERE outcome = 'successful' AND currency_id = 2
),
failed_campaigns AS (
  SELECT goal, pledged
  FROM campaign
  WHERE outcome = 'failed' AND currency_id = 2
)
SELECT
  AVG(successful_campaigns.goal) AS avg_goal_successful,
  AVG(successful_campaigns.pledged) AS avg_pledged_successful,
  AVG(failed_campaigns.goal) AS avg_goal_failed,
  AVG(failed_campaigns.pledged) AS avg_pledged_failed
FROM successful_campaigns, failed_campaigns;
