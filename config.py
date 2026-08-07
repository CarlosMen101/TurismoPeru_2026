from dotenv import load_dotenv
import os ##para acceder a las carpetas del sistema operativo 

load_dotenv(override=True)##cargar variables de entorno sdesde .env

SERVER = os.getenv("SERVER")
DATABASE = os.getenv("DATABASE")
USERNAME = os.getenv("USERNAME")
PASSWORD = os.getenv("PASSWORD")
DRIVER = os.getenv("DRIVER")
