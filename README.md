# Gravitee Buildpack

Buildpack to deploy the API management platform https://www.gravitee.io/ on a PaaS like [Scalingo](https://scalingo.com)

## Description of the modules

### graviteeio-rest-api

This module is a java application, the JDK will be automatically installed just like another java application.

### graviteeio-gateway

This module is a java application, the JDK will be automatically installed just like another java application.

### graviteeio-portal-ui

This module is a static app, the buildpack download nginx to serve the assets

### graviteeio-management-ui

This module is a static app, the buildpack download nginx to serve the assets

## Configuration

Some environment variables must or can be configured.

Common to all modules:

* `GRAVITEE_MODULE`: "graviteeio-portal-ui", "graviteeio-management-ui","graviteeio-gateway" or "graviteeio-rest-api"
* `GRAVITEE_VERSION`: (optional) by default `3.8.3`

### graviteeio-rest-api

**Required:**

* `MONGO_URL`: URL to the mongodb replicaset, automatically provided by a Scalingo Addon
* `ELASTICSEARCH_URL`: URL to the elasticsearch cluster, automatically provided by a Scalingo Elasticsearch Addon
* `GRAVITEE_JWT_SECRET`: Secret which will be used to sign/encrypt JWT tokens, must be a long random string
* `GRAVITEE_PORTAL_URL`: URL to the deployment of the Portal UI, example: `https://my-gravitee-portal.osc-fr1.scalingo.io`
* `GRAVITEE_ADMIN_USERNAME`: Default admin user to bootstrap the installation of Gravitee and being able to create more users, example: `gravitee-admin`
* `GRAVITEE_ADMIN_PASSWORD`: Default admin password

**Optional:**

* `JVM_COMMON_BUILDPACK`: by default `https://buildpacks-repository.s3.eu-central-1.amazonaws.com/jvm-common.tar.xz`
* `MAIL_URL`: no default, configure which SMTP server should send emails, example: `smtp://username:password@smtpserver.example.com:587`
* `MAIL_SUBJECT_FORMAT`: no default, configure the format of the subjects of emails being sent, use `%s` for the rest of the subject, example: `[Gravitee.io] %s`
* `MAIL_SENDER_FROM`: no default, configure which email address with be used to send the emails from, example: `from@example.com`

### graviteeio-gateway

**Required:**

* `MONGO_URL`: URL to the mongodb replicaset, must be the same than the REST API, copy/paste the value for the gateway app
* `ELASTICSEARCH_URL`: URL to the elasticsearch cluster, must be the same than the REST API, copy/paste the value for the gateway app

**Optional:**

* `JVM_COMMON_BUILDPACK`: (optional) by default `https://buildpacks-repository.s3.eu-central-1.amazonaws.com/jvm-common.tar.xz`

### graviteeio-portal-ui

**Required:**

* `MANAGEMENT_API_URL`: URL to the REST API application, example: `https://my-gravitee-rest-api.osc-fr1.scalingo.io`

**Optional:**

* `NGINX_BUILDPACK_URL`: (optional) by default `https://github.com/Scalingo/nginx-buildpack`

### graviteeio-management-ui

**Required:**

* `MANAGEMENT_API_URL`: URL to the REST API application, example: `https://my-gravitee-rest-api.osc-fr1.scalingo.io`

**Optional:**

* `NGINX_BUILDPACK_URL`: (optional) by default `https://github.com/Scalingo/nginx-buildpack`

## Runtime Configuration

Once deployed:

* Settings → Organization Settings → Management URL Update
