vm_install
========

[![Automated Build](http://img.shields.io/badge/automated-build-green.svg)](https://registry.hub.docker.com/u/dock0/vm_install/)
[![MIT Licensed](http://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)


My deployment spec for [dock0](https://github.com/dock0/dock0)

## To use

The provided Docker container will automate deploying this spec

```
docker run -ti -v /run/dock0/bootmnt:/run/dock0/bootmnt dock0/vm_install
```

To use an alternate branch for the installation, specify it via the environment:

```
# this will use the dev branch
docker run -ti -e BRANCH=dev -v /run/dock0/bootmnt:/run/dock0/bootmnt dock0/vm_install
```

## License

These scripts and config files are released under the MIT License. See the bundled LICENSE file for details.

