#!/bin/bash

rm -rf ~/.config/meshctl
mkdir -p ~/.config/meshctl
cp tools/mesh-gatt/prov_db.json ~/.config/meshctl
cp tools/mesh-gatt/local_node.json ~/.config/meshctl