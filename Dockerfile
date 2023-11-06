# Use the official OpenFlagr image as the base image
ARG OPENFLAGR_IMAGE_TAG=1.1.16

ARG MAINTAINER="Md. Nazmus Saqib Khan <ratulkhan.jhenidah@gmail.com>"

FROM ghcr.io/openflagr/flagr:${OPENFLAGR_IMAGE_TAG} AS base

LABEL maintainer ${MAINTAINER}

COPY --chown=root:root ./data /data

USER root
# Expose the necessary ports if your application requires it
EXPOSE 18000
