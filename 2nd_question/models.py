from sqlalchemy.schema import Column
from sqlalchemy.types import String, Integer,Float
from database import base,db_engine


class Product(base):
    __tablename__ = "product"

    id = Column(Integer, primary_key=True, index=True)
    company_Name= Column(String(30))
    product_name = Column(String(30))
    categories = Column(String(30))
    price = Column(Integer)
    rating = Column(Float)
    discount = Column(Integer)
    availability= Column(String(30))
        
base.metadata.create_all(bind=db_engine)
