-- most_popular_shared_start_times

SELECT vehicles.charging_sessions.weekdays_plugin, vehicles.charging_sessions.start_plugin_hour, COUNT(*) as num_charging_sessions 
FROM vehicles.charging_sessions
WHERE user_type = "Shared"
GROUP BY vehicles.charging_sessions.weekdays_plugin, vehicles.charging_sessions.start_plugin_hour
ORDER BY num_charging_sessions DESC
LIMIT 10;