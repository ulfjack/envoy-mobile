FROM python:3.7-buster

RUN apt-get update
RUN apt-get install -y \
    cmake \
    git \
    ninja-build \
    wget

RUN wget https://github.com/bazelbuild/bazelisk/releases/download/v1.8.1/bazelisk-linux-amd64 && \
    mv bazelisk-linux-amd64 /usr/local/bin/bazelisk && \
    chmod +x /usr/local/bin/bazelisk

RUN git clone https://github.com/envoyproxy/envoy-mobile \
        --branch ch/callback-lifetimes && \
    cd envoy-mobile && \
    git submodule update --init --recursive

RUN cd envoy-mobile && \
    bazelisk build //library/python:envoy_requests_whl

CMD cp envoy-mobile/bazel-bin/library/python/*.whl /wheel
