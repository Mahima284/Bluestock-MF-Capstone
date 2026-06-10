# Data Dictionary — Bluestock MF Capstone

## 01_fund_master.csv
| Column | Type | Description |
|--------|------|-------------|
| amfi_code | TEXT | Unique AMFI scheme code |
| fund_house | TEXT | AMC name |
| scheme_name | TEXT | Full official scheme name |
| category | TEXT | Equity / Debt |
| sub_category | TEXT | Large Cap / Mid Cap / Small Cap etc. |
| plan | TEXT | Regular or Direct |
| launch_date | DATE | Fund launch date |
| benchmark | TEXT | Official benchmark index |
| expense_ratio_pct | REAL | Annual expense ratio % |
| exit_load_pct | REAL | Exit load % |
| min_sip_amount | INT | Minimum SIP amount in Rs. |
| min_lumpsum_amount | INT | Minimum lumpsum amount in Rs. |
| fund_manager | TEXT | Primary fund manager name |
| risk_category | TEXT | Low/Moderate/High/Very High |
| sebi_category_code | TEXT | SEBI internal category code |

## 02_nav_history.csv
| Column | Type | Description |
|--------|------|-------------|
| amfi_code | TEXT | Foreign key to fund_master |
| date | DATE | NAV date (business days only) |
| nav | REAL | NAV in Rs. |

## 03_aum_by_fund_house.csv
| Column | Type | Description |
|--------|------|-------------|
| date | DATE | Quarter end date |
| fund_house | TEXT | AMC name |
| aum_lakh_crore | REAL | AUM in Rs. lakh crore |
| aum_crore | INT | AUM in Rs. crore |
| num_schemes | INT | Number of schemes |

## 04_monthly_sip_inflows.csv
| Column | Type | Description |
|--------|------|-------------|
| month | TEXT | YYYY-MM format |
| sip_inflow_crore | INT | Total SIP inflows in Rs. crore |
| active_sip_accounts_crore | REAL | Active SIP accounts in crore |
| new_sip_accounts_lakh | REAL | New SIP registrations in lakh |
| sip_aum_lakh_crore | REAL | SIP AUM in Rs. lakh crore |
| yoy_growth_pct | REAL | YoY growth % in SIP inflows |

## 07_scheme_performance.csv
| Column | Type | Description |
|--------|------|-------------|
| amfi_code | TEXT | Foreign key to fund_master |
| return_1yr_pct | REAL | 1 year absolute return % |
| return_3yr_pct | REAL | 3 year CAGR % |
| return_5yr_pct | REAL | 5 year CAGR % |
| sharpe_ratio | REAL | Risk adjusted return |
| alpha | REAL | Excess return over benchmark |
| beta | REAL | Market sensitivity |
| max_drawdown_pct | REAL | Worst peak to trough decline |
| expense_ratio_pct | REAL | Annual expense ratio % |

## 08_investor_transactions.csv
| Column | Type | Description |
|--------|------|-------------|
| investor_id | TEXT | Unique investor ID |
| transaction_date | DATE | Date of transaction |
| amfi_code | TEXT | Fund invested in |
| transaction_type | TEXT | SIP / Lumpsum / Redemption |
| amount_inr | INT | Transaction amount in Rs. |
| state | TEXT | Investor state |
| city_tier | TEXT | T30 or B30 city |
| age_group | TEXT | 18-25 / 26-35 / 36-45 / 46-55 / 56+ |
| gender | TEXT | Male / Female |
| annual_income_lakh | REAL | Annual income in Rs. lakh |
