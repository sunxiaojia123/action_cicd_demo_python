from fastapi import FastAPI

# 创建 FastAPI 实例
app = FastAPI()


# 创建一个简单的路由
@app.get("/ping")
def read_root():
    return "pong"


# 添加另一个路由
@app.get("/items/{item_id}")
def read_item(item_id: int, q: str = None):
    return {"item_id": item_id, "q": q}
