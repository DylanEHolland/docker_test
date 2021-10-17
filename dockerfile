FROM ubuntu:20.04
RUN apt update && apt install -yq python3 python3-pip
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["/usr/bin/python3"]
CMD ["run.py"]