FROM docker.pkg.github.com/dock0/arch/arch:20200602-c4aa710
MAINTAINER akerl <me@lesaker.org>
ENV BRANCH master
RUN pacman -S --needed --noconfirm ruby grub
RUN gem install --no-user-install --no-document dock0
ADD run /opt/run
CMD ["/opt/run"]
