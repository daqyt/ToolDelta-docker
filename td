#!/bin/bash 
sleep 5
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