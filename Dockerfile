FROM n8nio/n8n

# 設定工作目錄
WORKDIR /data

# 開放 port
EXPOSE 5678

# 啟動指令
CMD ["n8n"]
