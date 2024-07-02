VERSION 0.7
    build:
        FROM node:18.20.3@sha256:70ae166dcb03837ebe1abbb78919a1a4bdc79cc970344d56f33b6c753f4b46cc as otel-builder
        WORKDIR /builder
        # renovate: datasource=github-releases depName=open-telemetry/opentelemetry-collector-releases
        ENV OTELCOL_CONTRIB_VERSION=0.70.0

        RUN curl -LO https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v${OTELCOL_CONTRIB_VERSION}/otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz
        RUN tar -xvf otelcol-contrib_${OTELCOL_CONTRIB_VERSION}_linux_amd64.tar.gz