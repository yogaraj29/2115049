from typing import Dict, List
from fastapi import FastAPI,Depends
from database import SessionLocal
from sqlalchemy.orm import Session
import models
from database import base

app=FastAPI()



def get_db():
    db = None
    try:
        db = SessionLocal()
        yield db
    finally:
        db.close()

@app.get("/product_details")
def product_details(company_name:str,id:int,db:Session = Depends(get_db)):
    find=db.query(models.Product).filter(models.Product.company_Name==company_name,models.Product.id ==id).first()
    return {find}

@app.get("/products")
def product(company_name:str,categories:str,top:int,min:int,max:int,db:Session = Depends(get_db)):
    results = db.query(models.Product).filter(models.Product.company_Name == company_name,models.Product.categories == categories,models.Product.price.between(min, max)).order_by(models.Product.rating.desc()).limit(top).all()
    return results




