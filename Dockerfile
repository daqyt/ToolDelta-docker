FROM ubuntu:latest
ENV TZ Asia/Shanghai
ENV PYTHONPATH=/workspace
ENV PYTHONIOENCODING=utf-8
RUN mkdir -p /workspace
RUN apt update && apt install curl -y
COPY td /
RUN chmod +x /td
WORKDIR /workspace
ENTRYPOINT ["/td"]
