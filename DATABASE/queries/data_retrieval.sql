SELECT u.full_name, COUNT(fd.detection_id) AS flagged_count
FROM USERS u
JOIN ACCOUNTS a ON u.user_id = a.user_id
JOIN TRANSACTIONS t ON a.account_id = t.account_id
JOIN FRAUD_DETECTION fd ON t.transaction_id = fd.transaction_id
GROUP BY u.full_name
ORDER BY flagged_count DESC
FETCH FIRST 10 ROWS ONLY;
