
#stage 1: builder/compiler
FROM python:3.7-slim as builder
RUN apt update && \
    apt install --no-install-recommends -y build-essential gcc
COPY req.txt /req.txt

RUN pip install --no-cache-dir --user -r /req.txt


#stage 2: Runtime
FROM debian:buster-slim

RUN apt update && \
    apt install --no-install-recommends -y build-essential python3 && \
    apt clean && rm -rf /var/lib/apt/lists/*
COPY --from=builder /root/.local/lib/python3.7/site-packages /usr/local/lib/python3.7/dist-packages

WORKDIR /app
EXPOSE 8501
ENTRYPOINT ["streamlit","run"]
CMD ["/app/app.py"]
