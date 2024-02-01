FROM node:18@sha256:2a13079c6393cd19adfd8d362fac004b2d0eed462f3c3fedfad2c0d0de17b429 as otel-builder
WORKDIR /builder
# renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
ARG OTELCOL_CONTRIB_VERSION=0.70.0

RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
