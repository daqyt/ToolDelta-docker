#!/bin/bash

RESET="\033[0m"
LIGHT_BLUE="\033[1;34m"
DARK_BLUE="\033[0;34m"
DARK_RED="\033[0;31m"
DARK_PURPLE="\033[0;35m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
LIGHT_RED="\033[1;31m"
GRAY="\033[1;30m"

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

clean_print() {
    echo -e "$1"
}

function main(){
clear
clean_print "$TOOLDELTA_LOGO"
clean_print "${GREEN}请选择启动模式${YELLOW}(使用启动参数 -l <启动模式> 可以跳过该页面):${RESET}"
clean_print "1 - ${LIGHT_BLUE}启动 ToolDelta${RESET}"
clean_print "2 - ${DARK_PURPLE}打开 ToolDelta 插件管理器${RESET}"
clean_print "3 - ${DARK_PURPLE}打开 ToolDelta 插件市场${RESET}"
clean_print "4 - ${YELLOW}初始化所有插件配置${RESET}"
clean_print "5 - ${GREEN}修改启动配置${RESET}"
clean_print "6 - ${DARK_RED}开启直接启动模式${RESET}"
clean_print "7 - ${DARK_BLUE}安装pip库${RESET}"
clean_print "q - ${GRAY}退出"
read -p "请选择：" num
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
	python -c "from tooldelta.launch_options import client_title; client_title()" -l 6
	;;
	7)
	clear
	pipinstall
	;;
        q)
        clean_print "${GREEN}ToolDelta 已退出.${RESET}"
        exit 0
        ;;
	*)
	clean_print "${DARK_RED}不合法的启动模式:${RESET}"
	exit 1
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
  exit 1
fi
main
