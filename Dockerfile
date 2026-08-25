# renovate: datasource=github-releases depName=microsoft/ApplicationInsights-Java
ARG APP_INSIGHTS_AGENT_VERSION=3.7.4
ARG PLATFORM=""
ARG REGISTRY_NAME=hmctssbox

# Application image
FROM ${REGISTRY_NAME}.azurecr.io/base/java${PLATFORM}:25-distroless

COPY lib/applicationinsights.json /opt/app/
COPY build/libs/labs-spattnaiks.jar /opt/app/

USER 65532:65532

EXPOSE 8080

CMD ["labs-spattnaiks.jar"]
