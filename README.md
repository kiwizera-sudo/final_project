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
  ![](https://github.com/kiwizera-sudo/final_project/blob/340e77e23e350958a958aca72191a17cd9c2b8de/uml.png)
  Customer sends money
  Core System validates the request (checks balance, receiver) and creates a pending transaction
  Fraud Detection calculates a risk score - if score > 70, flags as suspicious
  Analyst Review - human reviews flagged transactions and either approves, rejects, or brokers them

  ### 3.Logical Model Design with data dictionary and assumptions
  ![](https://github.com/kiwizera-sudo/final_project/blob/b8394655471ad7218f52fb874dd7aa0cf14f92f6/erd.png)
  ### Assumptions
###   Business Rules

  One user can have multiple accounts (one-to-many relationship)
  Each transaction belongs to one account (sender's account)
  Alerts and security logs are user-specific, not account-specific
  Holidays affect transaction processing (may cause delays or restrictions)

###  Data Assumptions

  Currency is implied (likely single currency system - no currency field)
  Destination_number can be phone or account (supports mobile money transfers)
  Balance can be negative (no constraint shown - may allow overdrafts)
  Transactions are one-way records (only source account tracked, not destination account_id)

###  Security Assumptions

  All user activities are logged in security_log for audit trail
  Alerts are stored historically (no deletion, for compliance)
  Account_status controls access (suspended/blocked users can't transact)

###  Technical Assumptions

  Decimal(12,2) for money = supports up to 999 million with 2 decimal places
  Date fields store timestamps (though type shows 'date', likely datetime in practice)
  NN (Not Null) fields are mandatory for data integrity
  No soft deletes shown (records are permanent or hard-deleted)
  ###  Data Dictionary
  ![](https://github.com/kiwizera-sudo/final_project/blob/787c1f8417b37c0e1a4e17a1277e85a5dea141b9/Screenshot%20(144).png)
  
  ![](https://github.com/kiwizera-sudo/final_project/blob/8ec7751c8b5d7fe52b40b2c51eeb8ad0c0f0526a/Screenshot%20(145).png)
  
  ![](https://github.com/kiwizera-sudo/final_project/blob/20d2def5af1cd56ed920e74eb159b7997d63df0a/Screenshot%20(146).png)
  
  ![](https://github.com/kiwizera-sudo/final_project/blob/c02caa001d318ecf21fc3117602d970c0f0d56c0/Screenshot%20(147).png)
  
  ![](https://github.com/kiwizera-sudo/final_project/blob/c02caa001d318ecf21fc3117602d970c0f0d56c0/Screenshot%20(148).png)
  
  ![](https://github.com/kiwizera-sudo/final_project/blob/8b656bdb4da33de8d639ab2278528ec8f592a804/account.png)

### 4. Table Implementation & Data Insertion
![](https://github.com/kiwizera-sudo/final_project/blob/2a0bf6d3663d8e14b28623bde7e9b63167c8ccab/tables.png)

![](https://github.com/kiwizera-sudo/final_project/blob/11e557fa6e865441e2747403bcd4f248fa52fe37/tables2.png)

![](https://github.com/kiwizera-sudo/final_project/blob/74615d7d4f345dea1fb15dcee6a1431e002608b1/created.png)
tables where created successfully
### i inserted some data
![](https://github.com/kiwizera-sudo/final_project/blob/b0eaad3bb26d7df5c41df402bc5a82a137c1cdd2/insert_to_test.png)

### 5.  Database Interaction & Transactions 


** functions implementated ** 
![](https://github.com/kiwizera-sudo/final_project/blob/def59f4ca79c62a81bf60fc414974aa9219f2fd1/function.png)

** procedures **
![](https://github.com/kiwizera-sudo/final_project/blob/f8aba1813a72aff425b19cd0114280ef33cd4e8b/procedureadd.png)

![](https://github.com/kiwizera-sudo/final_project/blob/f8aba1813a72aff425b19cd0114280ef33cd4e8b/procedureadd2.png)

** Cursors **

![](https://github.com/kiwizera-sudo/final_project/blob/b87ec3c4453ded063a72f129b4f9bf8f4e531b3d/cursor.png)

[![]()](https://github.com/kiwizera-sudo/final_project/blob/b87ec3c4453ded063a72f129b4f9bf8f4e531b3d/cursor2.png)


** Packages **
![](https://github.com/kiwizera-sudo/final_project/blob/b9d7d590e65f7e970beeafe830efe55e738dcf36/package1.png)

![](https://github.com/kiwizera-sudo/final_project/blob/b9d7d590e65f7e970beeafe830efe55e738dcf36/package2.png)

![](https://github.com/kiwizera-sudo/final_project/blob/b9d7d590e65f7e970beeafe830efe55e738dcf36/pacakge3.png)


  




