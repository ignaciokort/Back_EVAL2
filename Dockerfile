FROM python:3.11-slim
WORKDIR /app
# Instalamos las librerías del backend
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Copiamos el código
COPY . .
# Exponemos el puerto 5000 (donde suele correr el Flask del back)
EXPOSE 5000
CMD ["python", "app.py"]
