VERSION 0.7
    build:
        FROM node:18@sha256:98218110d09c63b72376137860d1f30a4f61ce029d7de4caf2e8c00f3bcf0db7 as otel-builder
        WORKDIR /builder
        # renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
        ENV OTELCOL_CONTRIB_VERSION=0.70.0

        RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
        RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz