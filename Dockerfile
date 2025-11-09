FROM python:3.11

WORKDIR /app

COPY pyproject.toml /app/
COPY . /app/

RUN pip install --no-cache-dir .

CMD ["python", "bot.py"]
