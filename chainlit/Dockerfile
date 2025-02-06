FROM python:3.12

WORKDIR /app

COPY . .

# install dependencies
RUN pip install pydantic==2.10.1 chainlit ollama

CMD ["python3", "-m", "chainlit", "run", "app.py", "-h", "--port", "8000", "--host", "0.0.0.0"]