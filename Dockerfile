FROM python:3.12.12-alpine3.23 
WORKDIR /app 
COPY . /requirements.txt .
RUN pip3 install --no-cache-dir -r  requirements.txt 
COPY . /app
EXPOSE 8082
CMD ["python3","server.py"]
