# -*- coding: utf-8 -*-
import os
from dotenv import load_dotenv
load_dotenv()

TIMEOUT = os.getenv('TIMEOUT','300')
