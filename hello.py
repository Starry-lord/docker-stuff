from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello Galaxy",
    "flag": "cat ./flag.txt",
    "nsa": "is late"}