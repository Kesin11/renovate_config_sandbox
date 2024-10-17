FROM node:18.20.4@sha256:c8a65828bb3f921484bb25fec05b2909a9375a42b2932acd69b6a0fc1117aeb5 as otel-builder
WORKDIR /builder
# renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
ARG OTELCOL_CONTRIB_VERSION=0.70.0

RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
