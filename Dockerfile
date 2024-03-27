FROM node:18@sha256:8438dbe00747d24cdb53c616e02bf804420df9052151713c59484a1ddaf87b24 as otel-builder
WORKDIR /builder
# renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
ARG OTELCOL_CONTRIB_VERSION=0.70.0

RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
