this query shows blocked transactions on weekdays
  
SELECT *
FROM audit_log
WHERE error_msg LIKE '%Weekday%'
ORDER BY log_time DESC;

this query shows blocked transactions on holidays
SELECT *
FROM audit_log
WHERE error_msg LIKE '%Holiday%'
ORDER BY log_time DESC;
