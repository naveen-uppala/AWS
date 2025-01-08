import random
import requests
from fake_useragent import UserAgent

url = "http://hyderabad-packers-movers.in"

ua = UserAgent()

def simulate_advanced_bot():
    for i in range(50):
        headers = {
            "User-Agent": ua.random,
            "Accept": "*/*",
        }
        try:
            response = requests.get(url, headers=headers)
            print(f"Request {i + 1}: Status Code {response.status_code}, User-Agent: {headers['User-Agent']}")
        except Exception as e:
            print(f"Error: {e}")

if __name__ == "__main__":
    simulate_advanced_bot()
