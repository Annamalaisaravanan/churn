FROM python:3.8-slim
WORKDIR /appfolder
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501
COPY . /appfolder
ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]