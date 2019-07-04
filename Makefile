include version.mk

default: createroll

# Create the mirror...
# NOTE: Because of the structure of the nVIDIA repository the resulting ISO will be empty...
mirrorrepo:
	/opt/rocks/bin/rocks create mirror $(MIRRORURL)/$(BASEPATH) arch=$(ARCH) rollname=$(DISTRO) version=$(VERSION) release=$(RELEASE)

createroll:
	/bin/rm -f ./$(DISTRO)-$(VERSION)-0.$(ARCH).disk1.iso
	/bin/ln -sf ./developer.download.nvidia.com/compute/cuda/repos/rhel6/x86_64 ./RPMS
	/opt/rocks/bin/rocks create roll roll-$(DISTRO).xml
	/bin/rm -rf ./disk1

testing:
	echo "arch is " $(ARCH)
	curl -I $(MIRRORURL)/$(BASEPATH)/7fa2af80.pub
