FROM debian:stable-slim
RUN apt update
RUN apt install -y curl
WORKDIR /scripts
COPY Goa.Systems.Blazor.Integrationtest/ ./
RUN chmod u+x Integrationtest.sh
ENTRYPOINT ["./Integrationtest.sh"]
