FROM python:3.8-slim
RUN apt update && \
    apt install --no-install-recommends -y build-essential gcc
COPY requirements.txt /requirements.txt
RUN pip install  -r /requirements.txt
WORKDIR /app
EXPOSE 8501
ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]