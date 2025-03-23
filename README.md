# 📈 Trading Algo Project

A full-stack project with:
- **Backend**: FastAPI service fetching stock data and generating graphs
- **Frontend**: Flutter app to display stock graphs and interact with backend

## 🔥 Backend
- Python 3.13.2
- FastAPI + Uvicorn
- Yahoo Finance API (via `yfinance`)
- Matplotlib for graphs

## 🚀 Frontend
- Flutter (Dart)
- Fetches data from FastAPI backend
- Graph display planned

## 📂 Project Structure
trading-algo-proj/          # Root GitHub repo
├── backend/                # Backend of the application
│   ├── app/                
│   │   ├── __init__.py
│   │   ├── main.py
│   │   └── stock_service.py
│   ├── requirements.txt    # List of Python dependencies
│   └── README.md           # Backend-specific documentation
├── frontend/               # Flutter app
│   ├── lib/                # Flutter code and UI files
│   ├── android/            # Android-specific configurations
│   ├── ios/                # iOS-specific configurations
│   ├── pubspec.yaml        # Dart package dependencies
│   └── README.md           # Frontend-specific documentation
├── .gitignore              # Git ignore file for unwanted files
└── README.md               # Master README (this file)
