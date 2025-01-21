#!/bin/bash

# setup ollama on linux 
curl -fsSL https://ollama.com/install.sh | sh

echo "Starting Ollama server..."
ollama serve &


echo "Waiting for Ollama server to be active..."
while [ "$(ollama list | grep 'NAME')" == "" ]; do
  sleep 1
done

# pull llama 3.2 vision model
ollama pull llama3.2-vision

python3 -m chainlit run app.py -w -h --port 8000 --host 0.0.0.0

exec "$@"