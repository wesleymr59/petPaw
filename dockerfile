FROM python:3.12.2-alpine3.19

LABEL DESCRIPTION="pet-paw-api" 

COPY requirements.txt /

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN pip install --no-cache-dir --upgrade -r requirements.txt

WORKDIR /usr/src/app

COPY . .

CMD [ "uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "80"]


# docker image build -t petpaw:latest .


# docker container run --rm -it -v $(pwd):/usr/src/app --env-file .env -p 81:80 --name petpaw petpaw:latest