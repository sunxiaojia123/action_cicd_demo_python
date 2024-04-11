# # 基础镜像
# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11
#
# # 设置工作目录
# WORKDIR /app
#
# # 将当前目录下的所有文件复制到工作目录中
# COPY . .
#
# # 安装项目依赖
# RUN pip install --no-cache-dir -r requirements.txt
#
# # 暴露端口
# EXPOSE 80
#
# # 运行 FastAPI 应用
# CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

# 使用官方 Python slim 镜像作为基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制依赖文件并安装依赖
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 将当前目录下的所有文件复制到工作目录中（排除不必要的文件）
COPY . .

# 清理不需要的文件和缓存
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# 暴露端口
EXPOSE 80

# 运行 FastAPI 应用
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

