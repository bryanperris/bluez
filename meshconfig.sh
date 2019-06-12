#!/bin/bash

rm -rf ~/.config/meshctl
mkdir -p ~/.config/meshctl
cp tools/mesh/prov_db.json ~/.config/meshctl
cp tools/mesh/local_node.json ~/.config/meshctl