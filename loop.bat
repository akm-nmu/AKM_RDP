@echo off
pip install psutil --quiet
pip install requests --quiet
curl -s -L -o loop.py https://raw.githubusercontent.com/akm-nmu/AKM_RDP/main/loop.py
python loop.py