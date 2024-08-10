FROM python:3.12-slim
ENV TZ Asia/Shanghai
ENV PYTHONPATH=/workspace

RUN pip3 install ToolDelta
RUN mkdir -p /workspace
WORKDIR /workspace
CMD ["python", "-c", "from tooldelta.launch_options import client_title; client_title()"]
