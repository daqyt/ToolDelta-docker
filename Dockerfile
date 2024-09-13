FROM ubuntu:latest
ENV TZ Asia/Shanghai
RUN mkdir -p /workspace
RUN apt update && apt install curl -y
COPY td /
RUN chmod +x /td
WORKDIR /workspace
ENTRYPOINT ["bash"]
