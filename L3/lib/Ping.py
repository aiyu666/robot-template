import os
from dotenv import load_dotenv
import requests
load_dotenv()

class Ping:
    def ping_google(self, url=os.getenv('GOOGLE_URL')):
        res = requests.get(url)
        return res.status_code