FROM python:3.7-slim
MAINTAINER Alixan
WORKDIR /
RUN apt-get update -y \
    && apt-get install git -y \
    && git clone https://github.com/aboul3la/Sublist3r.git sublist3r \
    && cd sublist3r \
    && pip install -r requirements.txt
ENTRYPOINT ["python", "/sublist3r/sublist3r.py"]
