# syntax=docker/dockerfile:1
# init a base image (airplan is small linux distro )
FROM python:3.8-alpine
 # define the present working directory
WORKDIR /flask-todo
# copy the contents into the working dir
ADD . /flask-todo
# run pip  to install the dependencies of the flask app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
# define the command to start the container
CMD ["python3","app.py"]