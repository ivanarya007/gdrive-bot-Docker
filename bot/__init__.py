from dotenv import load_dotenv
import os
import logging

load_dotenv()

logging.basicConfig(
    level=logging.INFO,
    handlers=[logging.FileHandler('log.txt'), logging.StreamHandler()],
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s"
)
LOGGER = logging.getLogger(__name__)
logging.getLogger("pyrogram").setLevel(logging.WARNING)


BOT_TOKEN = os.getenv('BOT_TOKEN')
APP_ID = int(os.getenv('APP_ID'))
API_HASH = os.getenv('API_HASH')
DATABASE_URL = os.getenv('DATABASE_URL')
SUDO_USERS = os.getenv('SUDO_USERS')
SUPPORT_CHAT_LINK = os.getenv('SUPPORT_CHAT_LINK')
DOWNLOAD_DIRECTORY = os.getenv("DOWNLOAD_DIRECTORY", "./downloads/")
G_DRIVE_CLIENT_ID = os.getenv("G_DRIVE_CLIENT_ID")
G_DRIVE_CLIENT_SECRET = os.getenv("G_DRIVE_CLIENT_SECRET")


if SUDO_USERS:
    SUDO_USERS = list(map(int, SUDO_USERS.split(',')))
else:
    SUDO_USERS = [939425014] # Default sudo user is included here
SUDO_USERS = list(set(SUDO_USERS))
