#!/bin/bash

# 업데이트 및 패키지 목록 갱신
sudo apt update

# LXDE 및 필요한 패키지 설치
sudo apt install --no-install-recommends lxde lightdm

# xsession 파일 생성
echo "lxsession -s LXDE" | sudo tee /etc/X11/default-display-manager > /dev/null
echo "lxsession -s LXDE" > ~/.xsession
sudo chmod +x ~/.xsession

echo "TASK FINISH SUCCESSFULLY."
