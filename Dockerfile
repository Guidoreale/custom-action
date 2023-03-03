FROM python:3.9

COPY . /app
WORKDIR /app

RUN pip install
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "mi_script.py"]