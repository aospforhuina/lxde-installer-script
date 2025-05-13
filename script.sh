#!/bin/bash

# 업데이트 및 패키지 설치
sudo apt update
sudo apt install -y lxde lightdm

# .xsession 파일 생성
echo "lxsession -s LXDE" > ~/.xsession
chmod +x ~/.xsession

# LightDM 활성화 및 재설정
sudo systemctl enable lightdm
sudo dpkg-reconfigure lightdm

echo "TASK FINISH SUCCESSFULLY."
