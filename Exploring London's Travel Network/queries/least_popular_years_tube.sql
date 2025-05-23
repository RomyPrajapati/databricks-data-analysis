-- least_popular_years_tube
SELECT YEAR,JOURNEY_TYPE,SUM(JOURNEYS_MILLIONS) AS TOTAL_JOURNEYS_MILLIONS

FROM TFL.JOURNEYS
WHERE JOURNEY_TYPE='Underground & DLR' 
GROUP BY YEAR,JOURNEY_TYPE
ORDER BY TOTAL_JOURNEYS_MILLIONS  ASC
LIMIT 5;