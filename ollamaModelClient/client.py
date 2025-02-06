import http.client

# TODO: change this with an .env variable
host = "http://ollama_service:11434"
conn = http.client.HTTPConnection(host)

conn.request("POST", f"{host}/api/pull", { "model": "llama3.2" })

resp = conn.getresponse()

print(response.status, response.reason)