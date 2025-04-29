# ⚙️ Use a slim Python 3.11 base image
FROM python:3.11-slim

# 📂 Set working directory inside the container
WORKDIR /app

# 📦 Copy all project files to the container
COPY . /app

# 🔧 Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1  
ENV PYTHONUNBUFFERED=1         

# 📦 Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# 🚀 Command to run the FastAPI app with Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]