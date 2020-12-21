import os
from dotenv import load_dotenv
load_dotenv()

GOOGLE_URL=os.getenv('GOOGLE_URL')
DEFAULT_BROWSER=os.getenv('DEFAULT_BROWSER')