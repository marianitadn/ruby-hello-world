FROM openshift/ruby-20-centos

ADD sinatra_app /tmp/
USER root
RUN chown -R ruby:ruby /tmp/*

USER ruby
WORKDIR /tmp/
RUN bundle install

EXPOSE 8080
CMD ["rackup", "-p 8080"]
