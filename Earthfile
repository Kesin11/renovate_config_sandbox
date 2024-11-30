VERSION 0.7
    build:
        FROM node:18.20.4@sha256:c5c88762e9097e7fa405e5713731ea924fa52da33a13929ed64d8a6b79b95c89 as otel-builder
        WORKDIR /builder
        # renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
        ENV OTELCOL_CONTRIB_VERSION=0.70.0

        RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
        RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz