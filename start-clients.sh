#!/bin/bash

# start two instances, point them to the chain spec
CHAINSPEC="chain-spec.json"
WORKDIR="$HOME/Documents/quantstamp/src/parity"
BUILDDIR="$WORKDIR/target/debug"
node0_config="node0.toml"
node1_config="node1.toml"

if [ $1 -eq 1 ]; then
  $BUILDDIR/parity --config $node1_config
else
  $BUILDDIR/parity --config $node0_config
fi
