FROM node:18.20.4@sha256:11b742eda0142d9ea809fad8c506cbcadb2802c7d4b32e044e6b976691df36b1 as otel-builder
WORKDIR /builder
# renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
ARG OTELCOL_CONTRIB_VERSION=0.70.0

RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
