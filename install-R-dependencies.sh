#!/bin/bash

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran35/'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo apt update
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
apt-get -q install r-base -y --allow-unauthenticated
apt-get -q install libssl-dev -y
apt-get -q install libgmp3-dev  -y --allow-unauthenticated
apt-get -q install git -y
apt-get -q install build-essential  -y --allow-unauthenticated
apt-get -q install libv8-3.14-dev  -y --allow-unauthenticated
apt-get -q install libcurl4-openssl-dev -y --allow-unauthenticated
Rscript -e 'install.packages(c("V8","sfsmisc","clue","randomForest","lattice","devtools","MASS", "BiocManager"),repos="http://cran.us.r-project.org")'
Rscript -e 'library(BiocManager); BiocManager::install(c("bnlearn", "pcalg", "kpcalg", "devtools"))'
Rscript -e 'library(devtools); install_github("cran/momentchi2"); install_github("Diviyan-Kalainathan/RCIT")'
