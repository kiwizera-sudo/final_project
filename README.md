# Safe Mobile Money Transactions & Fraud Detection System  
**PL/SQL**
**Student**: Dieudonne | **ID**: 27623 | **Group**: wednesday
**Lecturer**: Eric Maniraguha  




---

### Project Overview
A production-ready Oracle PL/SQL solution that secures mobile money transactions through real-time fraud detection, automated alerts, and strict data modification restrictions (weekdays & public holidays).  
This system fully satisfies all 8 phases of the capstone project with bonus features.

### Key Features Implemented
- Real-time fraud scoring based on transaction amount and patterns
- Automatic insertion into `FRAUD_DETECTION` and `ALERT` tables
- Compound trigger that **blocks INSERT/UPDATE/DELETE on weekdays and public holidays**
- Full audit trail in `AUDIT_LOG` table (every blocked attempt logged)
- Procedures, functions, package, cursors, and analytic window functions
- Realistic Rwandan data (names, phone numbers, balances, transactions)
- 3NF normalized schema with proper constraints and sequences

  ### 1.Create and configure Oracle pluggable database

  ![](https://github.com/kiwizera-sudo/final_project/blob/b6d816b5c2fe5a37fd625063b4f3183f37b36981/pdb.png)

  ### 2.Business Process Modeling
  ![]()
  





