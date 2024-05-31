VERSION 0.7
    build:
        FROM node:18.20.2@sha256:5bac3a1edff13e76586b8eaef1d411fcd80e4f18cce5bc40ea6993245e0721ec as otel-builder
        WORKDIR /builder
        # renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
        ENV OTELCOL_CONTRIB_VERSION=0.70.0

        RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
        RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz