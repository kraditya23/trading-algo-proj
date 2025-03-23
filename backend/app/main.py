from fastapi import FastAPI, Query
from fastapi.middleware.cors import CORSMiddleware
from app.stock_service import fetch_and_plot

app = FastAPI()
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

@app.get("/get_stock_graph")
def get_stock_graph(symbol: str = Query(...), period: str = Query("6mo")):
    graph_image = fetch_and_plot(symbol, period)
    if graph_image:
        return {"image": graph_image}
    return {"error": "Invalid symbol or no data"}