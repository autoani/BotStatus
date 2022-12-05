FROM python:3.10.5-slim-buster

WORKDIR .
RUN pip3 install python-decouple pytz telethon
RUN pip3 install --upgrade pip

COPY . .

RUN pip3 install -r requirements.txt

CMD ["python3", "bot.py"]
