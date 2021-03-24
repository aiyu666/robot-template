# -*- coding: utf-8 -*-
import os
from dotenv import load_dotenv
load_dotenv()

TIMEOUT = os.getenv('TIMEOUT','300')
BUILD_VERSION = os.getenv('BUILD_VERSION','1.0.0')