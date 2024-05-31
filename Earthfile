VERSION 0.7
    build:
        FROM node:18.20.3@sha256:b08b1356559e2e9945f47ded630c9eb9d4e3ca04f111ab20d55652442cf14aee as otel-builder
        WORKDIR /builder
        # renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
        ENV OTELCOL_CONTRIB_VERSION=0.70.0

        RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
        RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz