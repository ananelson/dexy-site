### @export "python-version"
python --version

### @export "install-setuptools"
apt-get install -y python-setuptools

### @export "install"
easy_install dexy

### @export "check"
dexy version
dexy help

