**Bluestock MF Capstone — Mutual Fund Analytics** 



&#x20;**Overview**

End-to-end data analytics project covering ETL, SQL database design, EDA, performance analytics, and Power BI dashboard for 40 real Indian mutual fund schemes.



**Project Structure**

bluestock\_mf\_capstone



├── data/



│   ├── raw/          - Original 10 CSV datasets + live NAV fetches



│   └── processed/    - Cleaned datasets, CAGR, Sharpe, scorecard etc.



├── notebooks/        - 4 Jupyter notebooks (Day 1-4)



├── sql/              - schema.sql, queries.sql



├── dashboard/        - Power BI dashboard (.pbix)



└── reports/          - Charts, data dictionary, findings



**How to Run**

1\. Install dependencies: `pip install -r requirements.txt`

2\. Run notebooks in order: 01\_data\_ingestion → 02\_data\_cleaning → 03\_eda\_analysis → 04\_performance\_analytics

3\. Open `dashboard/bluestock\_mf\_dashboard.pbix` in Power BI Desktop



&#x20;**Key Findings**

\- SBI Mutual Fund is the largest AMC, AUM grew from Rs.6.05L Cr (2022) to Rs.12.50L Cr (2025)

\- SIP inflows hit all-time high of Rs.31,002 Cr in Dec 2025

\- Total MF folios grew from 13.26 Cr to 26.12 Cr (2022-2025)

\- Top fund by composite score: Mirae Asset Large Cap (85.9/100)

\- Worst drawdown: SBI Small Cap Direct at -52.6%



**Technologies**

Python, Pandas, NumPy, Matplotlib, Seaborn, Plotly, SQLite, SQLAlchemy, Power BI



**Author**

Mahima Kulkarni — Bluestock Fintech Data Analyst Intern

