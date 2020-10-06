FROM python:2-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apk add --update --no-cache g++ gcc libxslt-dev
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./script.py" ]