FROM python:3.8-slim
WORKDIR /app
RUN pip install --no-cache-dir scikit-learn streamlit xgboost
EXPOSE 8501
ENTRYPOINT ["streamlit","run"]
CMD ["app.py"]