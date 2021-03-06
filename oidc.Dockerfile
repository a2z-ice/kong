FROM kong:2.0.4-centos
LABEL description="Centos 7 + Kong 2.0.4 + kong-oidc plugin"

USER root

ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/config/kong.yml
ENV KONG_PLUGINS=oidc,cors,prometheus

#RUN cp /etc/kong/kong.conf.default /etc/kong/kong.conf
RUN yum install -y git unzip && yum clean all

RUN luarocks install kong-oidc
