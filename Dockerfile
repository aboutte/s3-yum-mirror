FROM registry.access.redhat.com/rhel7.4:latest

ARG RHEL_USERNAME
ARG RHEL_PASSWORD

COPY yum_mirror.rb /yum_mirror.rb
COPY Gemfile.lock /Gemfile.lock
COPY Gemfile /Gemfile
COPY bootstrap.sh /bootstrap.sh

RUN /bootstrap.sh

CMD /yum_mirror.rb
