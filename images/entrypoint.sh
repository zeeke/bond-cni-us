#!/bin/sh

set -u -e -x

CNI_BIN_DIR=${CNI_BIN_DIR:-"/host/opt/cni/bin/"}

cp -f /bond $CNI_BIN_DIR
