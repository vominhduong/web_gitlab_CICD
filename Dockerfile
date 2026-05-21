FROM python:alpine3.10
WORKDIR  /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 3000
CMD ["python","app.py"]
