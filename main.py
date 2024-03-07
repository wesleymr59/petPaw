from fastapi import FastAPI
from app.controllers.index import indexController


app = FastAPI()


app.include_router(indexController.router)