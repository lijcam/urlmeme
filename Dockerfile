FROM python:2.7-alpine3.8

EXPOSE 5000

ENV HTTP_PLATFORM_SERVE 0.0.0.0

RUN apk --update add freetype-dev gcc libjpeg-turbo-dev musl-dev zlib-dev

WORKDIR /usr/src/app

COPY . ./
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "./url.py"]
