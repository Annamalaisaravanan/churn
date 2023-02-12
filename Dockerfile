FROM python:3.8-slim
WORKDIR /app
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir requirements.txt
EXPOSE 8501
ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]