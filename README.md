# JSP CRUD Operation 🚀

This project demonstrates basic **CRUD (Create, Read, Update, Delete)** operations using **JSP, Servlet, and JDBC** with a relational database (MySQL).

---

## 📌 Features
- **Create** → Add new user data through a registration form.  
- **Read** → Retrieve and display records from the database.  
- **Update** → Modify existing user details.  
- **Delete** → Remove a user record from the database.  

---

## 🛠️ Technologies Used
- **Java (JSP & Servlet)**
- **JDBC** for database connectivity
- **MySQL** as the database
- **HTML/CSS** for frontend
- **Apache Tomcat** as the server

---

## ⚙️ Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/jsp-crud.git
2. Import the project into your IDE (Eclipse/IntelliJ/NetBeans).

3. Configure your database:
CREATE DATABASE crud_db;
USE crud_db;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(50),
    address VARCHAR(100),
    mobile VARCHAR(15)
);

4. Deploy the project on Apache Tomcat and run.

📂 Project Structure
   CRUDOperation.jsp/
│
├── src/main/webapp/
│   ├── META-INF/
│   ├── WEB-INF/
│   ├── index.html        # Home page
│   ├── log.jsp           # Login page
│   ├── reg.jsp           # Registration page
│   ├── update.jsp        # Update user details
│   ├── uppwd.jsp         # Update password
│   └── welcome.jsp       # User landing page
│
└── README.md

🤝 Contributing
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.



