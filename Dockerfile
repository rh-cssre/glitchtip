FROM registry.gitlab.com/glitchtip/glitchtip-backend:master
ARG GLITCHTIP_VERSION=local
ENV GLITCHTIP_VERSION ${GLITCHTIP_VERSION}

COPY dist/ /code/dist

USER 1001

RUN SECRET_KEY=ci ./manage.py collectstatic --noinput
