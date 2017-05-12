FROM bioboxes/biobox-minimal-base@sha256:b73428dee585232350ce0e30d22f97d7d22921b74b81a4196d246ca2da3cb0f5

ENV MEGAHIT_VERSION v1.1.1

ADD image /usr/local

RUN install.sh && rm /usr/local/bin/install.sh

ENV TASKFILE     /usr/local/share/Taskfile
ENV SCHEMA       /usr/local/share/assembler_schema.yaml
ENV BIOBOX_EXEC  assemble.sh
