#!/bin/bash
## Author: Nathanael Gandhi https://github.com/NathanaelGandhi/

## ADD TO CONTAINERS REGISTRY
echo "[config-containers] adding docker.io to containers registry"
if grep -q "unqualified-search-registries=["docker.io"]" /etc/containers/registries.conf; then
    echo "already exists"
else
    echo 'unqualified-search-registries=["docker.io"]' >> /etc/containers/registries.conf
fi

## COMPLETE
echo "[config-containers]"
echo "--- COMPLETE ---"
