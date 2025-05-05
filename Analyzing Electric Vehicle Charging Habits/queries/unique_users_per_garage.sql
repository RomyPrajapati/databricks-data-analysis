-- unique_users_per_garage
-- Modify the code below
SELECT garage_id, count(distinct(user_id)) as num_unique_users
FROM vehicles.charging_sessions
WHERE user_type = "Shared"
GROUP BY garage_id
ORDER BY num_unique_users DESC