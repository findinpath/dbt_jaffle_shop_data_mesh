FROM fishtownanalytics/dbt:0.20.0
USER root

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y --no-install-recommends \
    netcat curl git ssh software-properties-common \
    make build-essential ca-certificates libpq-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/
ADD docker/dbt/profiles.yml /root/.dbt/profiles.yml
ADD docker/dbt/jaffle_shop /jaffle_shop
RUN pip3 install --upgrade pip
RUN pip3 install dbt-trino==0.20.0

WORKDIR /jaffle_shop

ENTRYPOINT ["/bin/sh", "-c"]
