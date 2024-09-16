FROM python:3.12-slim
ENV TZ Asia/Shanghai
ENV PYTHONPATH=/workspace

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple ToolDelta
RUN mkdir -p /workspace
RUN echo "#!/bin/sh \necho \"开始更新ToolDelta\" \npip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade ToolDelta \necho \"ToolDelta更新完成\" \necho \"ToolDelta 启动!\" \npython -c \"from tooldelta.launch_options import client_title; client_title()\"" >/td;
RUN chmod +x /td
WORKDIR /workspace
ENTRYPOINT ["/td"]
