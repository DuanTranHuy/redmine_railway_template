FROM bitnami/redmine:latest

# Environment variables that can be customized during deployment
# See: https://hub.docker.com/r/bitnami/redmine for all available options

# Database configuration - these will be set through Railway variables
ENV REDMINE_DATABASE_HOST=$DATABASE_HOST
ENV REDMINE_DATABASE_PORT_NUMBER=$DATABASE_PORT
ENV REDMINE_DATABASE_NAME=$DATABASE_NAME
ENV REDMINE_DATABASE_USERNAME=$DATABASE_USERNAME
ENV REDMINE_DATABASE_PASSWORD=$DATABASE_PASSWORD

# Admin configuration
ENV REDMINE_USERNAME=$REDMINE_ADMIN_USERNAME
ENV REDMINE_PASSWORD=$REDMINE_ADMIN_PASSWORD
ENV REDMINE_EMAIL=$REDMINE_ADMIN_EMAIL

# SMTP configuration
ENV REDMINE_SMTP_HOST=$SMTP_HOST
ENV REDMINE_SMTP_PORT_NUMBER=$SMTP_PORT
ENV REDMINE_SMTP_USER=$SMTP_USERNAME
ENV REDMINE_SMTP_PASSWORD=$SMTP_PASSWORD

# Expose the port
EXPOSE 8080

# Use the entrypoint and command from the base image
