FROM dock0/arch
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-rdoc --no-ri dock0
RUN git clone git://github.com/dock0/vm_install /opt/vm_install
CMD ["dock0", "install", "/opt/vm_install/config.yaml"]
