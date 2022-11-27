FROM python:3.10.6-slim-buster

WORKDIR /app
COPY . /app
RUN pip3 install -r /app/requirements.txt
RUN chmod 777 /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]

CMD ["python3", "/app/bot.py"]

