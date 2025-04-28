# 📋 Task Manager API

A modern FastAPI application to manage personal tasks securely using JWT authentication.

---

## 🚀 Features

- User Signup and Login
- JWT-based authentication
- Create, Read, and Delete personal tasks
- SQLite Database with SQLAlchemy ORM
- Password hashing with bcrypt
- Protected routes (token-based access)
- Easy local development with `run.sh`
- Ready for future PostgreSQL, Docker, CI/CD upgrades

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
├── tests/ (to be added)
├── run.sh
├── requirements.txt
├── .gitignore
└── README.md
```

---

## ⚙️ Setup Instructions

### 1. Clone the repository

```bash
git clone https://github.com/Guillaume-ANTON/task-manager.git
cd task-manager
```

### 2. Create and activate a virtual environment

```bash
python3.11 -m venv venv
source venv/bin/activate
```

### 3. Install the dependencies

```bash
pip install -r requirements.txt
```

### 4. Start the server

```bash
./run.sh
```

Server will be available at: [http://127.0.0.1:8000](http://127.0.0.1:8000)  
Swagger UI documentation: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

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
- **SQLite** - Local Database
- **JWT** - Authentication tokens
- **Passlib** - Password hashing
- **Pydantic** - Data validation
- **Pytest** (coming soon) - Testing

---

## 📈 Future Improvements

- [ ] Add task updating (`PUT /tasks/{id}`)
- [ ] Full unit and integration tests with `pytest`
- [ ] Switch to PostgreSQL + Docker
- [ ] Add CI/CD pipeline (GitHub Actions)
- [ ] Deploy to Render, Railway, or AWS

---

## 📄 License

MIT — Free to use and modify.

---

> Built with ❤️ by [Guillaume Anton](https://github.com/Guillaume-ANTON)
