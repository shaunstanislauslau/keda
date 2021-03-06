#! /bin/bash

DIR="$(dirname $0)"

set -e

# Verify environment and tools
$DIR/verify_env.sh

# # Environment setup
$DIR/setup.sh

set +e
# cleanup
$DIR/cleanup.sh
set -e

# # Install Keda
$DIR/install_keda.sh

# Run tests
$DIR/test_cases/run_all_tests.sh

# cleanup
$DIR/cleanup.sh