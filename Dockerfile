# Imagen base de Python
FROM python:3.10

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivo de dependencias
COPY requirements.txt .

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el proyecto
COPY . .

# Exponer puerto
EXPOSE 3000

# Ejecutar la aplicación
CMD ["python", "app.py"]