FROM python
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN python manage.py migrate
CMD ["python", "manage.py","runserver","0.0.0.0:5002"]

