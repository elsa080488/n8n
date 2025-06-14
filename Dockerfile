FROM n8nio/n8n:latest

# 設定工作目錄（可省略）
WORKDIR /data

# 若需登入保護可加入以下環境變數（可刪除）
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=password

# 開放埠口
EXPOSE 5678

# 執行指令
CMD ["node", "./packages/cli/bin/n8n"]
