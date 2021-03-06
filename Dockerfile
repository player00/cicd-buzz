FROM alpine:3.5
RUN apk update
RUN apk add py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
CMD python /src/app.py