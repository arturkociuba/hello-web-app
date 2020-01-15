FROM python:slim

# for flask web server
ENV PORT=8123
EXPOSE ${PORT}
ENV NUM_OF_WORKERS=1

WORKDIR /tmp
# install required packages
COPY requirements.txt /tmp
RUN pip3 install --requirement requirements.txt

# set working directory
COPY . /app
WORKDIR /app

ADD ./src/ /app
CMD [ "python", "./app.py" ]
