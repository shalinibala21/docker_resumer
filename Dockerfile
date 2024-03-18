FROM python:3.9

WORKDIR /app

COPY . /app

RUN --mount=type=cache,target=/root/.cache \
        pip install -r requirements.txt

EXPOSE 5000
ENV DEBUG True
