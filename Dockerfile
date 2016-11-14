FROM python:2.7

MAINTAINER gaga5lala1013@gmail.com

# ref: https://github.com/rollbar/rollbar-agent#install-rollbar-agent
RUN pip install rollbar-agent==0.4.0

COPY files/etc/rollbar-agent.conf /etc/rollbar-agent.conf
COPY files/etc/init.d/rollbar-agent-init.sh /etc/init.d/rollbar-agent

COPY run.sh /tmp/run.sh

RUN chmod +x /etc/init.d/rollbar-agent

CMD bash /tmp/run.sh
