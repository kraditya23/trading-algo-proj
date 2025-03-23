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
trading-algo-proj/       # Root GitHub repo
├── backend/
│   ├── app/
│   │   ├── __init__.py
│   │   ├── main.py
│   │   └── stock_service.py
│   ├── requirements.txt
│   └── README.md 
├── frontend/             # Flutter app
│   ├── lib/
│   ├── android/
│   ├── ios/
│   ├── pubspec.yaml
│   └── README.md 
├── .gitignore
└── README.md             # Master readme