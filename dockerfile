# syntax=docker/dockerfile:1

FROM arm64v8/python:latest

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8050

CMD [ "python3", "-m" , "flask", "run", "--host" ,"0.0.0.0", "--port", "8050"]