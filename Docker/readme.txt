# Git image from docker hun
docker pull centos:latest
latest: Pulling from library/centos
Digest: sha256:fe8d824220415eed5477b63addf40fb06c3b049404242b31982106ac204f6700
Status: Image is up to date for centos:latest
docker.io/library/centos:latest

# Move file
mkdir -p ~/repos/public/Docker/images

# Save docker image to file
docker save -o ~/repos/public/Docker/images/centos7.docker centos

# unzip file 
tar -xvf file.tar.xz