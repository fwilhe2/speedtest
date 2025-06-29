FROM python:3-slim AS builder
RUN pip install speedtest-cli

FROM cgr.dev/chainguard/python:latest

WORKDIR /app

COPY --from=builder /usr/local/lib/python3.13/site-packages/speedtest.py speedtest-cli

ENTRYPOINT [ "python", "/app/speedtest-cli" ]
