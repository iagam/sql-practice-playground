# SQL Practice Playground

This repository contains **SQL problems and solutions** that you can practice using a Dockerized PostgreSQL database with pgAdmin.  
It’s a simple playground where you can run queries, test yourself, and then check the solutions.

---

## 🚀 Getting Started

### Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop) installed and running  
- Basic familiarity with running commands in **Terminal / PowerShell / CMD**

### 1. Clone this Repo
```bash
git clone https://github.com/<your-username>/sql-practice-playground.git
cd sql-practice-playground
```

### 2. Start PostgreSQL + pgAdmin

We use Docker Compose to run both services together.

Make sure Docker is installed, then run:
```bash
docker-compose up -d
```

### 3. Access the Services

**Postgres DB**  
- Host: `localhost`  
- Port: `5432`  
- Username: `admin`  
- Password: `admin123`  
- Database: `mydb`  

**pgAdmin (GUI for Postgres)**  
- URL: [http://localhost:8080](http://localhost:8080)  
- Login: `admin@admin.com` / `admin123`  

In pgAdmin, add a new server:  
- **Host**: `postgres` (service name, not localhost)  
- **Port**: `5432`  
- **Username**: `admin`  
- **Password**: `admin123`

### 4. Practice SQL

- Open files inside the [`problems/`](./problems) folder.  
- Copy the queries into pgAdmin and run them.  
- When you’re done, check the [`solutions/`](./solutions) folder to compare answers.

### 5. Stop Services

```bash
docker-compose down
```

