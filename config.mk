# Versions of components
UCERNVM_VERSION = 2.5
UCERNVM_RELEASE = $(shell cat release)
KERNEL_VANILLA_VERSION = 3.18.21
KERNEL_CERNVM_RELEASE = 19
BB_UPSTREAM_VERSION = 1.23.2
BB_RELEASE = 2
CURL_UPSTREAM_VERSION = 7.32.0
CURL_RELEASE = 1
DROPBEAR_UPSTREAM_VERSION = 2015.67
DROPBEAR_RELEASE = 1
PATCHELF_UPSTREAM_VERSION = 0.8
PATCHELF_RELEASE = 1
PARROT_UPSTREAM_VERSION = 5.2.1
PARROT_RELEASE = 2
NTPCLIENT_UPSTREAM_VERSION = 2010
NTPCLIENT_RELEASE = 1
DHCLIENT_UPSTREAM_VERSION = 4.3.1
DHCLIENT_RELEASE = 1
E2FSPROGS_UPSTREAM_VERSION = 1.42.12
E2FSPROGS_RELEASE = 1
KEXEC_UPSTREAM_VERSION = 2.0.4
KEXEC_RELEASE = 1
SFDISK_UPSTREAM_VERSION = 2.23
SFDISK_RELEASE = 1
CVMFS_UPSTREAM_VERSION = 2.2.0
CVMFS_RELEASE = 2
EXTRAS_VERSION = 1.0

CERNVM_INCREASE_RELEASE = 0

CERNVM_SYSTEM = HEAD
CERNVM_BRANCHES = prod sl7
IMAGE_FORMATS = vhd iso hdd
#CERNVM_BRANCHES = testing devel prod slc4 slc5 sl7
#IMAGE_FORMATS = iso hdd fat vdi vhd vmdk tar.gz ova box

SIGNING_SERVER = cvm-sign01.cern.ch
SINGING_URL = https://$(SIGNING_SERVER)/cgi-bin/cernvm/sign-image
CA_BUNDLE = /etc/pki/tls/certs/cern-ca-bundle.crt
HOST_CERT = /etc/pki/tls/certs/cvm-build20.crt
HOST_KEY = /etc/pki/tls/private/cvm-build20.key
SIGNING_DN = /DC=ch/DC=cern/OU=computers/CN=cvm-sign01.cern.ch

# Set to one of CERNVM_BRANCHES by main Makefile
CERNVM_BRANCH =
IMAGE_FORMAT =

# Derived parameters
UCERNVM_STRONG_VERSION = $(UCERNVM_VERSION)-$(UCERNVM_RELEASE).cernvm.x86_64
KERNEL_VERSION = $(KERNEL_VANILLA_VERSION)-$(KERNEL_CERNVM_RELEASE)
KERNEL_STRONG_VERSION = $(KERNEL_VERSION).cernvm.x86_64
BB_VERSION = $(BB_UPSTREAM_VERSION)-$(BB_RELEASE)
BB_STRONG_VERSION = $(BB_VERSION).cernvm.x86_64
CURL_VERSION = $(CURL_UPSTREAM_VERSION)-$(CURL_RELEASE)
CURL_STRONG_VERSION = $(CURL_VERSION).cernvm.x86_64
DROPBEAR_VERSION = $(DROPBEAR_UPSTREAM_VERSION)-$(DROPBEAR_RELEASE)
DROPBEAR_STRONG_VERSION = $(DROPBEAR_VERSION).cernvm.x86_64
PATCHELF_VERSION = $(PATCHELF_UPSTREAM_VERSION)-$(PATCHELF_RELEASE)
PATCHELF_STRONG_VERSION = $(PATCHELF_VERSION).cernvm.x86_64
PARROT_VERSION = $(PARROT_UPSTREAM_VERSION)-$(PARROT_RELEASE)
PARROT_STRONG_VERSION = $(PARROT_VERSION).cernvm.x86_64
NTPCLIENT_VERSION = $(NTPCLIENT_UPSTREAM_VERSION)-$(NTPCLIENT_RELEASE)
NTPCLIENT_STRONG_VERSION = $(NTPCLIENT_VERSION).cernvm.x86_64
DHCLIENT_VERSION = $(DHCLIENT_UPSTREAM_VERSION)-$(DHCLIENT_RELEASE)
DHCLIENT_STRONG_VERSION = $(DHCLIENT_VERSION).cernvm.x86_64
E2FSPROGS_VERSION = $(E2FSPROGS_UPSTREAM_VERSION)-$(E2FSPROGS_RELEASE)
E2FSPROGS_STRONG_VERSION = $(E2FSPROGS_VERSION).cernvm.x86_64
KEXEC_VERSION = $(KEXEC_UPSTREAM_VERSION)-$(KEXEC_RELEASE)
KEXEC_STRONG_VERSION = $(KEXEC_VERSION).cernvm.x86_64
SFDISK_VERSION = $(SFDISK_UPSTREAM_VERSION)-$(SFDISK_RELEASE)
SFDISK_STRONG_VERSION = $(SFDISK_VERSION).cernvm.x86_64
CVMFS_VERSION = $(CVMFS_UPSTREAM_VERSION)-$(CVMFS_RELEASE)
CVMFS_STRONG_VERSION = $(CVMFS_VERSION).cernvm.x86_64
EXTRAS_STRONG_VERSION = $(EXTRAS_VERSION).cernvm.x86_64

CERNVM_SERVER = $(shell grep ^$(CERNVM_BRANCH) branch2server | awk '{print $$2}')
CERNVM_PATH_PREFIX = $(shell grep ^$(CERNVM_BRANCH) branch2path | awk '{print $$2}')
CERNVM_REPOSITORY = cernvm-$(CERNVM_BRANCH).cern.ch
CERNVM_ROOTTREE = ucernvm-root-$(CERNVM_BRANCH).$(UCERNVM_STRONG_VERSION).$(IMAGE_FORMAT)
IMAGE_DIR = ucernvm-images.$(UCERNVM_STRONG_VERSION)
IMAGE_NAME = ucernvm-$(CERNVM_BRANCH).$(UCERNVM_STRONG_VERSION)
IMAGE_FILE = $(IMAGE_NAME).$(IMAGE_FORMAT)
