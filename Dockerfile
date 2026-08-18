# renovate: datasource=github-releases depName=microsoft/ApplicationInsights-Java
ARG APP_INSIGHTS_AGENT_VERSION=3.7.4
ARG PLATFORM=""
# Application image

FROM hmctsprod.azurecr.io/base/java${PLATFORM}:21-distroless

COPY lib/applicationinsights.json /opt/app/
COPY build/libs/labs-SPattnaikS.jar /opt/app/

EXPOSE 8080
CMD [ "labs-SPattnaikS.jar" ]
