FROM python:3.10.4

ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt
COPY . /code
CMD python manage.py runserver 0.0.0.0:8000
