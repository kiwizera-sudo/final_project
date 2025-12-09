# System Architecture – Safe Mobile Money Transactions & Fraud Detection

## 1. Overview

The system is designed to secure mobile money transactions by detecting fraudulent activity in real-time using Oracle PL/SQL procedures, triggers, and packages. The architecture ensures:

- **Data integrity** through relational database design (3NF)  
- **Fraud detection** with risk scoring algorithms  
- **Automated alerts** for suspicious activity  
- **Audit logging** for compliance and traceability  

---

## 2. High-Level Architecture

Client / User
│
▼
Mobile Money Application / Web Interface
│
▼
Oracle Database (26ai / XE)
├── USERS
├── ACCOUNTS
├── TRANSACTIONS
├── ALERT
└── SECURITY_LOG

- Users interact with the system via a mobile or web interface.  
- Transactions are processed and validated in the database.  
- Suspicious transactions trigger fraud detection procedures, generate alerts, and log actions in the audit table.  

---

## 3. Components

### 3.1 Users Module
- Stores user profiles, phone numbers, and account status  
- Controls access to accounts and transaction operations  

### 3.2 Accounts Module
- Holds account information, balance, and type  
- Links each account to a user  

### 3.3 Transactions Module
- Records all transaction activity  
- Contains triggers that check for unusual patterns  

### 3.5 Alerts Module
- Sends notifications for suspicious transactions  
- Logs alerts for monitoring and reporting  

### 3.6 Audit Log Module
- Tracks all user and system actions  
- Ensures compliance with security policies  

---

## 4. Security & Compliance

- DML restrictions on weekdays and holidays  
- Logged blocked attempts and actions  
- User account status controls transaction permission  

---

## 5. Database Architecture

- Relational, normalized schema (3NF)  
- Primary keys, foreign keys, and constraints ensure data integrity  
- Identity columns for auto-incremented IDs  
- Use of PL/SQL packages, procedures, triggers, and analytic functions for business logic
