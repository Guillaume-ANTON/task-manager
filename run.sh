#!/bin/bash

echo "Activating virtual environment..."
source venv/bin/activate

echo "Installing requirements..."
pip install -r requirements.txt

echo "Starting FastAPI server on http://127.0.0.1:8000..."
uvicorn app.main:app --reload