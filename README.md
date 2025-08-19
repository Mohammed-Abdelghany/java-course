# Java Course 📚

This repository contains my **Java practice materials**, **data structure implementations**, **competitive programming solutions**, and **OOP projects**.  
It’s a personal learning repo where I apply concepts from courses and self-study.

---

## 📁 Structure

- **Assignments/**  
  Contains basic Java exercises and course assignments.

- **CodeforceProblems/sheet1/**  
  My solutions to competitive programming problems from Codeforces.

- **DataStructure/**  
  Custom implementations of data structures in Java (e.g., Array, Stack, Queue, LinkedList).

- **practices/**  
  Hands-on practice with Java concepts such as:
  - Functional Interfaces (Predicate, Consumer, Supplier, etc.)
  - Streams API
  - Comparisons of Java collections (List vs Vector, HashSet vs TreeSet, etc.)

- **projects/**  
  Full OOP-based projects. Currently includes:
  - **project1_oop/** → E-Wallet System

---

## 🚀 Getting Started

To explore or run the code:

1. Clone the repository:
   ```bash
   git clone https://github.com/Mohammed-Abdelghany/java-course.git
   ```
2. Open the project in your favorite IDE (IntelliJ / Eclipse / VS Code).  
3. Or compile manually from terminal:
   ```bash
   javac -d out $(find src -name "*.java")
   java -cp out Main
   ```

---

## 💳 Project 1: E-Wallet System

A simple **OOP-based Java project** that simulates an **E-Wallet system**.  
It supports **account creation** with validation and **login functionality**.

### 📂 Location
`projects/project1_oop`

### ✨ Features
- Create an account with validation (e.g., username, password).
- Login validation against registered accounts.
- Central `EWallet` class that manages all accounts.
- Validation error handling with custom error messages.

### 🛠️ Technologies Used
- **Java OOP**
- **Custom Validation**
- **Collections API** (`ArrayList`, loops, etc.)

### ⚙️ How to Run
1. Navigate to the project folder:
   ```bash
   cd projects/project1_oop
   ```
2. Compile:
   ```bash
   javac -d out $(find src -name "*.java")
   ```
3. Run the main class:
   ```bash
   java -cp out Main
   ```

### 🔮 Future Enhancements
- Add balance management (deposit, withdraw, transfer).
- Transaction history for each account.
- More advanced validation rules.
- Unit testing.

---

## 🧑‍💻 Author
**Mohammed Abdelghany**  
Learning and practicing Java 🚀  
