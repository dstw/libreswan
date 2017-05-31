KVM_ISO_URL = http://fedora.bhs.mirrors.ovh.net/linux/releases/25/Server/x86_64/iso/Fedora-Server-dvd-x86_64-25-1.3.iso
KVM_KICKSTART_FILE = testing/libvirt/fedora25.ks

KVM_PACKAGE_INSTALL = dnf install -y
KVM_DEBUGINFO_INSTALL = dnf  debuginfo-install -y

# fedora 25 hack. run swan-transmogrify to initialze Network
# interscace It does not seems to run the first time when called from
# /etc/rc.d/rc.local This slows down installation. If you 7 prefixes
# it could cost 40 min:)
KVM_F25_HACK=$(KVMSH) --shutdown $(1)$(2) '/testing/guestbin/swan-transmogrify'

KVM_PACKAGES = \
    ElectricFence \
    audit-libs-devel \
    bison \
    conntrack-tools \
    curl-devel \
    fipscheck-devel \
    flex \
    gcc \
    gdb \
    git \
    glibc-devel \
    hping3 \
    ipsec-tools \
    ldns \
    ldns-devel \
    libcap-ng-devel \
    libfaketime \
    libevent-devel \
    libseccomp-devel \
    libselinux-devel \
    lsof \
    nc \
    nsd \
    nspr-devel \
    nss-devel \
    nss-tools \
    ocspd\
    openldap-devel \
    pam-devel \
    pexpect \
    python3-pexpect \
    python3-setproctitle \
    racoon2 \
    strace \
    strongswan \
    systemd-devel \
    tar \
    unbound \
    unbound-devel \
    unbound-libs \
    valgrind \
    vim-enhanced \
    xl2tpd \
    xmlto

KVM_DEBUGINFO = \
    ElectricFence \
    audit-libs \
    conntrack-tools \
    cyrus-sasl \
    glibc \
    keyutils \
    krb5-libs \
    ldns \
    libcap-ng \
    libcom_err \
    libcurl \
    libevent \
    libevent-devel \
    libgcc \
    libidn \
    libseccomp \
    libselinux \
    libssh2 \
    nspr \
    nss \
    nss-softokn \
    nss-softokn-freebl \
    nss-util \
    ocspd \
    openldap \
    openssl-libs \
    pam \
    pcre \
    python-libs \
    sqlite \
    unbound-libs \
    xz-libs \
    zlib \