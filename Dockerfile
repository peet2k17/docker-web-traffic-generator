FROM python:2-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY script.py ./
COPY config.py.template ./config.py

RUN apk add --update --no-cache g++ gcc libxslt-dev
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./script.py" ]