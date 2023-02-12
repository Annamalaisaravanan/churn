FROM python:3.8-slim
WORKDIR /app
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir scikit-learn streamlit xgboost
COPY . /app
ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]