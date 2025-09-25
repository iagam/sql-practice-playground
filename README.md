# SQL Practice Playground

This repository contains **SQL problems and solutions** that you can practice using a Dockerized PostgreSQL database with pgAdmin.  
It’s a simple playground where you can run queries, test yourself, and then check the solutions.

## 🚀 Getting Started

### Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop) installed and running
- [Git](https://git-scm.com/) installed to clone the repository (alternatively you can use **Github Desktop**)
- Basic familiarity with running commands in **Terminal / PowerShell / CMD**

### 1. Clone this Repo
```bash
git clone https://github.com/iagam/sql-practice-playground.git
cd sql-practice-playground
```

### 2. Start PostgreSQL + pgAdmin

Make sure Docker Desktop  is installed and running, then run:
```bash
docker-compose up -d
```
- Docker Desktop will download the images if needed.
- Containers will start in the background.

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

### ✨ Notes

- All SQL is written for **PostgreSQL**.  
- Solutions are just one approach — try your own first!  
- **Database persistence:**  
  - Docker volumes (`postgres_data`) **persist your database** even if you stop or remove containers.  
  - Running `docker-compose down` only stops and removes containers — your data stays intact.  
  - Running `docker-compose down -v` **removes volumes** and resets the database.

---

### Contributing

- Add new problems to the `problems/` folder.  
- Add solutions to the `solutions/` folder.  
- Follow existing file naming conventions.
