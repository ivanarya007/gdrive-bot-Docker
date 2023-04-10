## Features
- [X] Telegram files support.
- [X] Direct Links support.
- [X] Custom Upload Folder.
- [X] TeamDrive Support.
- [X] Clone/Copy Google Drive Files.
- [X] Delete Google Drive Files.
- [X] Empty Google Drive trash.
- [X] youtube-dl support.

## ToDo 
- [ ] Handle more exceptions.
- [ ] LOGGER support.
- [ ] Service account support.
- [ ] Update command.

## Deploying
### Installation
- Install required modules.
```sh
apt install -y git python3 ffmpeg
```
- Clone this git repository.
```sh 
git clone https://github.com/ivanarya007/gdrive-bot.git
```
- Change Directory
```sh 
cd gdrive-bot
```
- Install requirements with pip3
```sh 
pip3 install -r requirements.txt
```
```sh 
python3 -m bot
```

### Configuration
### Add Environment Variables Values .env Directory gdrive-bot Folder   

- BOT_TOKEN - Get it by contacting to [BotFather](https://t.me/botfather)
- APP_ID - Get it by creating app on [my.telegram.org](https://my.telegram.org/apps)
- API_HASH - Get it by creating app on [my.telegram.org](https://my.telegram.org/apps)
- SUDO_USERS - List of Telegram User ID of sudo users, seperated by space.
- SUPPORT_CHAT_LINK - Telegram invite link of support chat.
- DATABASE_URL - Postgres database url.
- DOWNLOAD_DIRECTORY - Custom path for downloads. Must end with a forward `/` slash. (Default to `./downloads/`)
- G_DRIVE_CLIENT_ID - G_DRIVE_CLIENT_ID
- G_DRIVE_CLIENT_SECRET - G_DRIVE_CLIENT_SECRET

### Deploy And Bot Run Command 

### 

