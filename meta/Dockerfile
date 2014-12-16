FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
ENV BRANCH master
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-rdoc --no-ri dock0
ADD run /opt/run
CMD ["/opt/run"]
