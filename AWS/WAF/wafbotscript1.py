import requests
import time
 
# Target website URL (replace with your Route 53 domain name)
url = "http://hyderabad-packers-movers.in/"
 
# Custom headers to mimic a bot (use suspicious user-agents, etc.)
headers = {
    "User-Agent": "BadBot/1.0",
"Referer": "http://malicious-site.com"
}
 
# Function to send repetitive requests
def bad_bot():
    print("Starting bad bot...")
    for i in range(100):  # Sends 100 requests
        try:
            response = requests.get(url, headers=headers)
            print(f"Request {i+1}: Status Code {response.status_code}")
            time.sleep(1)  # Delay between requests to simulate a real bot
        except Exception as e:
            print(f"Error: {e}")
            break
 
if __name__ == "__main__":
    bad_bot()
