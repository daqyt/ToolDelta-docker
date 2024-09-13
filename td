#!/bin/bash 
echo "开始检测ToolDelta更新" 
tdv="$(curl http://222.187.254.86:5244/d/ToolDelta-Basic/ToolDelta/main/version)" 
function da(){
gitclone="https://github.dqyt.online/https://github.com/"
until curl "$gitclone/ToolDelta-Basic/ToolDelta/releases/download/$tdv/ToolDelta-linux">ToolDelta;do
  echo "下载失败，5秒后切换镜像源"
  sleep 5
  ((N++))
  case "$N" in
    1)gitclone="https://github.moeyy.xyz/https://github.com/";;
    2)echo "你的网络似乎有什么问题呢？请稍后重新尝试吧";EXIT_FAILURE;;
    *)gitclone="https://github.com/";N=0
  esac
done
RUN chmod +x ./ToolDelta
}
if [ ! -d "./ToolDelta" ];then
echo "开始下载ToolDelta"
da
fi
if [ "$tdv" -ne "$(./ToolDelta -v)" ]; then
echo "发现最新版本，开始更新"
da
echo "ToolDelta更新完成" 
fi
echo "ToolDelta已经是最新版本" 
echo "ToolDelta 启动!" 
./ToolDelta