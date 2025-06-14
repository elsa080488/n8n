FROM n8nio/n8n:latest

# 設定工作目錄（可省略）
WORKDIR /data

# 啟用基本驗證（可選）
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=password

# 開放 port
EXPOSE 5678

# 啟動指令（n8n 已經是 image 預設指令）
CMD ["n8n"]
