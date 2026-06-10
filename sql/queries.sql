
-- Query 1: Top 5 funds by AUM
SELECT scheme_name, fund_house, aum_crore
FROM fact_performance
ORDER BY aum_crore DESC
LIMIT 5;

-- Query 2: Average NAV per month
SELECT substr(date, 1, 7) as month,
       ROUND(AVG(nav), 2) as avg_nav
FROM fact_nav
GROUP BY month
ORDER BY month;

-- Query 3: SIP YoY growth
SELECT month, sip_inflow_crore,
       ROUND(yoy_growth_pct, 2) as yoy_growth_pct
FROM fact_sip_industry
WHERE yoy_growth_pct IS NOT NULL
ORDER BY month;

-- Query 4: Transactions by state
SELECT state, COUNT(*) as total_transactions,
       ROUND(SUM(amount_inr)/1000000.0, 2) as total_amount_millions
FROM fact_transactions
GROUP BY state
ORDER BY total_transactions DESC;

-- Query 5: Funds with expense ratio < 1%
SELECT scheme_name, fund_house, expense_ratio_pct, plan
FROM dim_fund
WHERE expense_ratio_pct < 1.0
ORDER BY expense_ratio_pct ASC;

-- Query 6: Top 5 funds by Sharpe ratio
SELECT f.scheme_name, f.fund_house, p.sharpe_ratio, p.return_3yr_pct
FROM fact_performance p
JOIN dim_fund f ON p.amfi_code = f.amfi_code
ORDER BY p.sharpe_ratio DESC
LIMIT 5;

-- Query 7: Average SIP amount by age group
SELECT age_group, COUNT(*) as total_transactions,
       ROUND(AVG(amount_inr), 2) as avg_sip_amount
FROM fact_transactions
WHERE transaction_type = 'SIP'
GROUP BY age_group
ORDER BY avg_sip_amount DESC;

-- Query 8: Top 5 funds by 3 year returns
SELECT f.scheme_name, f.fund_house, f.sub_category, p.return_3yr_pct
FROM fact_performance p
JOIN dim_fund f ON p.amfi_code = f.amfi_code
ORDER BY p.return_3yr_pct DESC
LIMIT 5;

-- Query 9: AUM growth by fund house over years
SELECT fund_house, substr(date, 1, 4) as year,
       ROUND(AVG(aum_lakh_crore), 2) as avg_aum
FROM fact_aum
GROUP BY fund_house, year
ORDER BY fund_house, year;

-- Query 10: Transaction split by type
SELECT transaction_type, COUNT(*) as total_transactions,
       ROUND(SUM(amount_inr)/1000000.0, 2) as total_amount_millions,
       ROUND(AVG(amount_inr), 2) as avg_amount
FROM fact_transactions
GROUP BY transaction_type
ORDER BY total_transactions DESC;
