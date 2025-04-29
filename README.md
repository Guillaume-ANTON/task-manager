# 📋 Task Manager API

A modern FastAPI application to manage personal tasks securely using JWT authentication.

---

## 🚀 Features

- User Signup and Login
- JWT-based authentication
- Create, Read, and Delete personal tasks
- SQLite or PostgreSQL support with SQLAlchemy ORM
- Password hashing with bcrypt
- Protected routes (token-based access)
- Easy local development with Docker or run script
- Ready for PostgreSQL, Docker, CI/CD workflows

---

## 📁 Project Structure

```
task-manager/
├── app/
│   ├── __init__.py
│   ├── main.py
│   ├── models.py
│   ├── schemas.py
│   ├── database.py
│   ├── auth.py
│   └── routes/
│       ├── users.py
│       └── tasks.py
├── venv/ (ignored)
├── tests/ (to be added)
├── run.sh
├── requirements.txt
├── .gitignore
├── .env
├── Dockerfile
├── docker-compose.yml
└── README.md
```

---

## ⚙️ Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/Guillaume-ANTON/task-manager.git
cd task-manager
```

### 2. Configure environment variables

Create a `.env` file with:

```env
DATABASE_URL=postgresql://user:password@db:5432/taskmanager
```

### 3. Run with Docker (recommended)

```bash
docker-compose up --build
```

The API will be available at: [http://localhost:8000/docs](http://localhost:8000/docs)

---

## 🧲 Usage Flow

1. **Signup** - `POST /users/signup`
2. **Login** - `POST /users/login` → receive JWT token
3. **Authorize** - Use the token in Swagger UI (Authorize 🔒)
4. **Create Task** - `POST /tasks/`
5. **View Tasks** - `GET /tasks/`
6. **Delete Task** - `DELETE /tasks/{id}`

---

## 🛠 Technologies Used

- **FastAPI** - Framework
- **Uvicorn** - ASGI Server
- **SQLAlchemy** - ORM
- **PostgreSQL / SQLite** - Database support
- **JWT** - Authentication tokens
- **Passlib** - Password hashing
- **Pydantic** - Data validation
- **Pytest** (coming soon) - Testing
- **Docker** - Containerized app

---

## 📈 Future Improvements

- [ ] Add task updating (`PUT /tasks/{id}`)
- [ ] Full unit and integration tests with `pytest`
- [ ] Add CI/CD pipeline (GitHub Actions)
- [ ] Deploy to Render, Railway, or AWS

---

## 📄 License

MIT — Free to use and modify.

---

> Built with ❤️ by [Guillaume Anton](https://github.com/Guillaume-ANTON)