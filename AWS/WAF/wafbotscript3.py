import requests

# Target URL
url = "http://hyderabad-packers-movers.in"

# Custom invalid User-Agent
headers = {
    "User-Agent": "BadBot/1.0"
}

# Send requests
for i in range(50):
    response = requests.get(url, headers=headers)
    print(f"Request {i+1}: {response.status_code}")
