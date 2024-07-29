# Usar una imagen base de Python
FROM python:3.12-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de requisitos y el código al contenedor
COPY requirements.txt requirements.txt
COPY . .

# Actualizar pip y setuptools
RUN pip install --upgrade pip setuptools

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto en el que la aplicación de Streamlit escuchará
EXPOSE 8501

# Definir el comando por defecto para ejecutar la aplicación
CMD ["streamlit", "run", "app.py"]

