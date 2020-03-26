FROM vault:1.3.1 as vault

FROM openjdk:8-jre-stretch

RUN apt-get update -y && \
    apt-get install -y jq curl

COPY --from=vault /bin/vault /bin/vault