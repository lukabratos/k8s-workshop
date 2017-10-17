FROM ubuntu:17.10
LABEL version="0.1"
LABEL description="TinyCLI tool wrapped in a Docker container"
RUN apt-get update && apt-get install -y curl
ADD message.txt /message.txt
ADD run.sh /run.sh
RUN chmod a+x /run.sh
ENTRYPOINT ["/run.sh"]
CMD ["https://httpbin.org/user-agent"]
