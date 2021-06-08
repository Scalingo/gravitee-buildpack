# Gravitee Buildpack

Buildpack to deploy the API management platform https://www.gravitee.io/ on a PaaS like [Scalingo](https://scalingo.com)

## Description of the modules

### graviteeio-gateway

This module is a java application, the JDK will be automatically installed just like another java application.

### graviteeio-rest-api

This module is a java application, the JDK will be automatically installed just like another java application.

### graviteeio-portal-ui

This module is a static app, the buildpack download nginx to serve the assets

### graviteeio-management-ui

This module is a static app, the buildpack download nginx to serve the assets

## Configuration

Some environment variables are mandatory:

* `GRAVITEE_MODULE`: "graviteeio-portal-ui", "graviteeio-management-ui","graviteeio-gateway" or "graviteeio-rest-api"
* `GRAVITEE_VERSION`: (optional) by default `3.8.3`
* `NGINX_BUILDPACK_URL`: (optional) by default `https://github.com/Scalingo/nginx-buildpack`
* `JVM_COMMON_BUILDPACK`: (optional) by default `https://buildpacks-repository.s3.eu-central-1.amazonaws.com/jvm-common.tar.xz`
