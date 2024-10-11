#!/bin/bash 
sleep 5
function main(){
clear
echo -e "
1.启动ToolDelta
2.安装pip库"
read -p "请输入相对应的序列号数字:" num
case "${num}" in
	0)
	clear
    echo -e "感谢使用！欢迎下次再来！"
	;;
	1)
	clear
	python -c "from tooldelta.launch_options import client_title; client_title()"
	;;
	2)
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
if [ -e "/workspace/pip" ]
then
   main
else
   echo "ToolDelta不存在"
   echo "开始安装ToolDelta"
   pip install ToolDelta
   main
fi