#!/bin/bash

# move to wherever we are so docker things work
cd "$(dirname "${BASH_SOURCE[0]}")"

set -exo pipefail
docker run \
    --network="trino_jaffle_shop_network" \
    dbt-trino-jaffle-shop \
    "dbt run && dbt test"
