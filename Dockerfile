FROM centos:7

RUN yum -y install python3
RUN yum -y install vim
ADD vimrc /root/.vimrc

COPY requirements.txt /
RUN pip3 install -r /requirements.txt

COPY Collectors /app
COPY configs /configs
WORKDIR /app

EXPOSE 9930/udp
EXPOSE 8000/tcp
