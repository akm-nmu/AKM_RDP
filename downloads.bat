@echo off
curl -s -L -o setup.py https://raw.githubusercontent.com/akm-nmu/AKM_RDP/main/setup.py
curl -s -L -o Avica_setup.exe "https://download.avica.com/downloader/Avica_setup.exe"
curl -s -L -o show.bat https://raw.githubusercontent.com/akm-nmu/AKM_RDP/main/show.bat
curl -s -L -o loop.bat https://raw.githubusercontent.com/akm-nmu/AKM_RDP/main/loop.bat
curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
curl -s -L -o wall.bat https://raw.githubusercontent.com/akm-nmu/AKM_RDP/main/wall.bat
python.exe -m pip install --upgrade pip
pip install requests --quiet
pip install pyautogui --quiet
pip install telegraph --quiet

C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin AKM-NMU-Team
python -c "import pyautogui as pag; pag.click(897, 64, duration=2)"
start "" "Avica_setup.exe"
call wall.bat
python setup.py