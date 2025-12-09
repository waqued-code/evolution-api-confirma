FROM atendai/evolution-api:v2.1.1

# Configurações padrão
ENV SERVER_URL=https://evolution-api.onrender.com
ENV AUTHENTICATION_TYPE=apikey
ENV AUTHENTICATION_API_KEY=3c33c7d648ad90ea051ea0968d9f2fe7cedcae0e29efa28aeda79e649aaca2fb
ENV AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true

# Database PostgreSQL (configurado via variável de ambiente no Render)
ENV DATABASE_ENABLED=true
ENV DATABASE_PROVIDER=postgresql
# DATABASE_CONNECTION_URI será definida no Render Dashboard

# Redis desabilitado
ENV CACHE_REDIS_ENABLED=false
ENV CACHE_REDIS_URI=
ENV CACHE_LOCAL_ENABLED=true

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
