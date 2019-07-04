DISTRO        = cuda-rhel6
ARCH          = x86_64
#VERSION       = rhel6
VERSION      :=$(shell date +%Y.%m.%d)
ifndef MIRRORURL
  MIRRORURL   = https://developer.download.nvidia.com/compute/cuda/repos
endif
BASEPATH      = rhel6/$(ARCH)
