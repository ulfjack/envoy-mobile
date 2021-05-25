#!/usr/bin/env bash

set -e

# cd ~/src/envoy-mobile

# real_name=envoy_requests-0.0.1-cp37-cp37-macosx_10_9_x86_64.whl
# fake_name=envoy_requests-0.0.1-py3-none-any.whl

# python_bin_path=$(which python)
# PYTHON_BIN_PATH="$python_bin_path" bazel build //library/python:envoy_requests_whl

# rm -f "~/src/custodian/${fake_name}"
# cp "~/src/envoy-mobile/bazel-bin/library/python/${real_name}" "~/src/custodian/${fake_name}"

# pip uninstall -y envoy-requests
# pip install ../custodian/${fake_name}

bazel build //library/python:envoy_requests_whl --xcode_version=12.5
pip uninstall -y envoy-requests
pip install bazel-bin/library/python/envoy_requests-0.0.1a0-cp39-cp39-macosx_10_9_x86_64.whl
