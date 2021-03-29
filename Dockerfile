FROM python:3.8.8-alpine

RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python3-dev cargo \
  && pip install --upgrade pip \
  && pip install cffi==1.14.4 \
  && pip install setuptools-rust==0.11.6  \
  && pip install cryptography==3.4.1 \
  && pip install certifi==2020.12.5 \
  && pip install chardet==4.0.0 \
  && pip install idna==2.10 \
  && pip install pycparser==2.20 \
  && pip install PyMySQL==1.0.2 \
  && pip install pytz==2021.1 \
  && pip install requests==2.25.1 \
  && pip install semantic-version==2.8.5 \
  && pip install toml==0.10.2 \
  && pip install urllib3==1.26.3 \
  && pip install pytz==2021.1 \
  && apk del build-dependencies