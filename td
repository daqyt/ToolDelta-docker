#!/bin/bash

RESET="\033[0m"
LIGHT_BLUE="\033[1;34m"
DARK_BLUE="\033[0;34m"
DARK_RED="\033[0;31m"
DARK_PURPLE="\033[0;35m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
LIGHT_RED="\033[1;31m"

sleep 1

TOOLDELTA_LOGO="\
╔═════════════════════════════════════════════════════════════════════════╗
║${DARK_BLUE}████████╗ ██████╗  ██████╗ ██╗     ${LIGHT_BLUE}██████╗ ███████╗██╗  ████████╗ █████╗ ${RESET}║
║${DARK_BLUE}╚══██╔══╝██╔═══██╗██╔═══██╗██║     ${LIGHT_BLUE}██╔══██╗██╔════╝██║  ╚══██╔══╝██╔══██╗${RESET}║
║${DARK_BLUE}   ██║   ██║   ██║██║   ██║██║     ${LIGHT_BLUE}██║  ██║█████╗  ██║     ██║   ███████║${RESET}║
║${DARK_BLUE}   ██║   ██║   ██║██║   ██║██║     ${LIGHT_BLUE}██║  ██║██╔══╝  ██║     ██║   ██╔══██║${RESET}║
║${DARK_BLUE}   ██║   ╚██████╔╝╚██████╔╝███████╗${LIGHT_BLUE}██████╔╝███████╗███████╗██║   ██║  ██║${RESET}║
║${DARK_BLUE}   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝${LIGHT_BLUE}╚═════╝ ╚══════╝╚══════╝╚═╝   ╚═╝  ╚═╝${RESET}║
╚═════════════════════════════════════════════════════════════════════════╝${RESET}"

function main(){
clear
echo -e "
1 - 启动 ToolDelta
2 - 打开 ToolDelta 插件管理器
3 - 打开 ToolDelta 插件市场
4 - 修改 ToolDelta 启动配置
5 - 开启 ToolDelta 直接启动模式
6 - 安装pip库"
read -p "请输入相对应的序列号数字:" num
case "${num}" in
	0)
	clear
    echo -e "感谢使用！欢迎下次再来！"
	;;
	1)
	clear
	python -c "from tooldelta.launch_options import client_title; client_title()" -l 1
	;;
	2)
	clear
	python -c "from tooldelta.launch_options import client_title; client_title()" -l 2
	;;
	3)
	clear
	python -c "from tooldelta.launch_options import client_title; client_title()" -l 3
	;;
	4)
	clear
	python -c "from tooldelta.launch_options import client_title; client_title()" -l 4
	;;
	5)
	clear
	python -c "from tooldelta.launch_options import client_title; client_title()" -l 5
	;;
	6)
	clear
	pipinstall
	;;
esac
}
function pipinstall() {
read -p "请输要安装的库名" pipanz
pip install $pipanz
main
}
if [ -e "/workspace/快速启动.sig" ]
then
   python -c "from tooldelta.launch_options import client_title; client_title()"
fi
main
