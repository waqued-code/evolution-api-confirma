FROM atendai/evolution-api:v2.1.1

# Configurações padrão
ENV SERVER_URL=https://evolution-api.onrender.com
ENV AUTHENTICATION_TYPE=apikey
ENV AUTHENTICATION_API_KEY=confirma-party-api-key-2024
ENV AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true

# Database desabilitado (usa armazenamento local)
ENV DATABASE_ENABLED=false

# Configurações de instância
ENV DEL_INSTANCE=false
ENV CONFIG_SESSION_PHONE_CLIENT=Confirma.Party
ENV CONFIG_SESSION_PHONE_NAME=Chrome

# Logs
ENV LOG_LEVEL=ERROR
ENV LOG_COLOR=true

# QR Code
ENV QRCODE_LIMIT=30
ENV QRCODE_COLOR=#000000

EXPOSE 8080

CMD ["node", "./dist/src/main.js"]
