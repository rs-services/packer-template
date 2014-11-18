#!/bin/sh -ex
cat >/etc/yum.repos.d/rightlink-epel.repo<<-EOF
[rightlink-epel]
name=RightLink
baseurl=http://mirror.rightscale.com/rightlink/yum/1/el/6/x86_64
gpgcheck=1
enabled=1
gpgkey=http://mirror.rightscale.com/rightlink/rightscale.pub
EOF

cat >/etc/yum.repos.d/RightScale-epel.repo<<-EOF
[rightscale-epel]
name=RightScale Software
baseurl=http://mirror.rightscale.com/rightscale_software/epel/6/x86_64/archive/latest/
gpgcheck=1
enabled=1
gpgkey=http://mirror.rightscale.com/rightlink/rightscale.pub
EOF

yum install -y rightlink6-cloud-vsphere 
yum install -y rightimage-extras-base-14.* 