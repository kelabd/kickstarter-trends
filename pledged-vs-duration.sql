SELECT
    pledged as dollars_pledged,
    JULIANDAY(DEADLINE) - JULIANDAY(LAUNCHED) AS campaign_duration
    FROM
    campaign
