FROM python:2.7
WORKDIR /usr/local/asynk
RUN git clone  --recursive https://github.com/skarra/ASynK.git
WORKDIR /usr/local/asynk/ASynK
RUN pip install rsa==4.5
RUN pip install -r requirements.txt
ENTRYPOINT ["python","asynk.py"]