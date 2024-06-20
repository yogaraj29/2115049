from typing import Dict, List
from fastapi import FastAPI

app=FastAPI()

@app.get("/")
def getmethod():
    return

@app.post("/store")
def storedata(data: List[Dict[str, str]]):
    return {"completed": True}
