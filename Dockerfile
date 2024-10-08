FROM python:3.12-slim
ENV TZ=Asia/Shanghai
ENV PYTHONPATH=/workspace
RUN pip install ToolDelta
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip config set global.target /workspace/pip
RUN mkdir -p /workspace
COPY td /
RUN chmod +x /td
WORKDIR /workspace
ENTRYPOINT ["/td"]
