# 使用 Node 作為基礎 image
FROM node:18-slim

# 安裝必要工具
RUN apt-get update && apt-get install -y python3 make g++ && apt-get clean

# 建立工作目錄
WORKDIR /app

# 安裝 n8n
RUN npm install n8n -g

# 建立資料夾給 n8n 存設定檔與 workflows
RUN mkdir /home/node/.n8n

# 開放 n8n 預設 port
EXPOSE 5678

# 啟動 n8n
CMD ["n8n"]
