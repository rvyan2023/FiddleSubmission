SELECT 
  transaction_time,
  transaction_amount,
  AVG(transaction_amount) OVER (ORDER BY transaction_time ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS rolling_avg
FROM transactions
ORDER BY transaction_time;