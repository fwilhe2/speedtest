FROM python:3-slim
RUN pip install speedtest-cli
ENTRYPOINT ["speedtest-cli"]
