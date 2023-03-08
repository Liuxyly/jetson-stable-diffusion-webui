FROM nvcr.io/nvidia/l4t-jetpack:r35.2.1

ENV TORCHVER=v1.13.1
ENV VISIONVER=v0.14.1
ENV AUDIOVER=v0.13.1

# Install dependencies (1)
RUN apt-get update \
    &&  apt-get install -y --no-install-recommends \
        automake autoconf libpng-dev nano wget npm \
        curl zip unzip libtool swig zlib1g-dev pkg-config \
        git wget xz-utils python3-mock libpython3-dev \
        libpython3-all-dev python3-pip g++ gcc make \
        pciutils cpio gosu git liblapack-dev liblapacke-dev \
    &&  rm -rf /var/lib/apt/lists/* \
    &&  apt-get clean

# https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

# reference:
#   https://github.com/dusty-nv/jetson-containers.git
#   https://github.com/PINTO0309/PyTorch-build.git
