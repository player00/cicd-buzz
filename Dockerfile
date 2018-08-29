FROM alpine:3.5
ENV http_proxy "http://proxy.t-systems.ru:3128"
RUN apk update
RUN apk add py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install --proxy http://proxy.t-systems.ru:3128 --upgrade pip
RUN pip install --proxy http://proxy.t-systems.ru:3128 -r /src/requirements.txt
COPY app.py /src
COPY buzz /src/buzz
CMD python /src/app.py