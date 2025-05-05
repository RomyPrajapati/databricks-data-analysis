-- long_duration_shared_users
SELECT 
    user_id, 
    AVG(charging_sessions.duration_hours) AS avg_charging_duration
FROM 
    vehicles.charging_sessions
WHERE 
    user_type = 'Shared'
GROUP BY 
    user_id
HAVING 
    AVG(charging_sessions.duration_hours) > 10
ORDER BY 
    avg_charging_duration DESC;