FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel
COPY ./deps /opt/

RUN apt-get update && apt-get install -y locales libglib2.0-dev libsm6 libxrender1 libxext6

RUN rm -f /etc/localtime && cp -f /opt/localtime /etc && rm /opt/localtime

RUN pip install seldon-core==1.1.0 -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
RUN apt-get install -y wget && wget https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py
RUN pip install -r /opt/requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com
RUN cd /opt && chmod a+x startPredict.sh

ENV PREDICTIVE_UNIT_SERVICE_PORT 8866

CMD ["/opt/startPredict.sh"]