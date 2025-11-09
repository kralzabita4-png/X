FROM python:3.11-slim

# Çalışma dizini
WORKDIR /app

# Bağımlılık dosyası kopyalanır
COPY requirements.txt /app/

# Bağımlılıklar kurulur
RUN pip install --no-cache-dir -r requirements.txt

# Tüm proje dosyaları kopyalanır
COPY . /app/

# Bot'u başlat
CMD ["python", "bot.py"]
