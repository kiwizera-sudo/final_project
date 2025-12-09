SELECT TRUNC(detected_at) AS fraud_day,
       COUNT(*) AS fraud_count
FROM FRAUD_DETECTION
GROUP BY TRUNC(detected_at)
ORDER BY fraud_day;
