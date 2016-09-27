vm_spec
========

[![Automated Build](http://img.shields.io/badge/automated-build-green.svg)](https://hub.docker.com/r/dock0/vm_spec/)
[![Build Status](https://img.shields.io/circleci/project/dock0/vm_spec/master.svg)](https://circleci.com/gh/dock0/vm_spec)
[![MIT Licensed](http://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)

My deployment spec for [dock0](https://github.com/dock0/dock0)

## Contents

This has the necessary files for [dock0](https://github.com/dock0/dock0) to run `dock0 install`

* config.yaml -- defines version of kernel, rootfs, and initrd to use when building the VM
* templates -- has the grub config templates to lay down so the VM can boot

It also has the Docker information in `meta/` to build a docker container that runs dock0.

The `dev/update.rb` script checks GitHub to see if any of the artifacts have updated versions.

## To use

The provided Docker container will automate deploying this spec

```
docker run -ti -v /dev/sda:/opt/device -v /run/vm/bootmnt:/run/vm/bootmnt dock0/vm_spec
```

To use an alternate branch for the installation, specify it via the environment:

```
# this will use the dev branch
docker run -ti -e BRANCH=dev -v /dev/sda:/opt/device -v /run/vm/bootmnt:/run/vm/bootmnt dock0/vm_spec
```

## License

These scripts and config files are released under the MIT License. See the bundled LICENSE file for details.

