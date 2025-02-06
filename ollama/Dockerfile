FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get -y install curl

RUN apt-get update && apt-get install -y pciutils

RUN apt-get -y install lshw

# we ensure that the python3.11 is installed
RUN apt-get install -y \
    python3.11 \
    python3-pip
    
# RUN apt-get install -y nvidia-container-toolkit
# install dependencies
RUN pip install pydantic==2.10.1 chainlit ollama

COPY . .

RUN curl -fsSL https://ollama.com/install.sh > ollamaInstall.sh

RUN ["chmod", "+x", "/app/ollamaInstall.sh"]

RUN ./ollamaInstall.sh

# RUN ollama serve &
# pull llama 3.2 model
# RUN ollama pull llama3.2

# CMD ["ollama","serve", "&", "&&", "ollama", "pull", "llama3.2", "&&", "python3", "-m", "chainlit", "run", "app.py", "-h", "--port", "8000", "--host", "0.0.0.0"]
CMD ["ollama","serve", "&"]