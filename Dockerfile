FROM python:3.9

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /app/src

EXPOSE 8501

ENTRYPOINT ["streamlit", "run"]
CMD ["app.py"]
