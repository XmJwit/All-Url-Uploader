FROM python:3.10.6-slim-buster

WORKDIR .
COPY . .
ADD  docker-entrypoint.sh  docker-entrypoint.sh
RUN pip3 install -r requirements.txt && chmod +x /docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["python3", "bot.py"]

