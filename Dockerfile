FROM ubuntu:latest
ENV TZ Asia/Shanghai
RUN mkdir -p /workspace
RUN apt update && apt install curl -y
RUN echo "#!/bin/sh \necho \"开始检测ToolDelta更新\" \ntdv=\"\$(curl http://222.187.254.86:5244/d/ToolDelta-Basic/ToolDelta/main/version)\" \nfunction da(){\ngitclone=\"https://github.dqyt.online/https://github.com/\"\nuntil curl \"\$gitclone/ToolDelta-Basic/ToolDelta/releases/download/\$tdv/ToolDelta-linux\">ToolDelta;do\n  echo \"下载失败，5秒后切换镜像源\"\n  sleep 5\n  ((N++))\n  case \"\$N\" in\n    1)gitclone=\"https://github.moeyy.xyz/https://github.com/\";;\n    2)echo \"你的网络似乎有什么问题呢？请稍后重新尝试吧\";EXIT_FAILURE;;\n    *)gitclone=\"https://github.com/\";N=0\n  esac\ndone\n}\nif [ ! -d \"./ToolDelta\" ];then\necho \"开始下载ToolDelta\"\nda\nfi\nif [\"\$tdv\" -ne \"\$(./ToolDelta -v)\"]; then\necho \"发现最新版本，开始更新\"\nda\necho \"ToolDelta更新完成\" \nfi\necho \"ToolDelta已经是最新版本\" \necho \"ToolDelta 启动!\" \n./ToolDelta" >/td;
RUN chmod +x /td
WORKDIR /workspace
ENTRYPOINT ["bash"]
