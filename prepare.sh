#!/bin/sh

filename="lain-pre-1476939656.tar.gz"
if [ ! -f "$filename" ]; then
    wget https://lain.oss-cn-beijing.aliyuncs.com/${filename}
fi
pre_dir=playbooks/roles/binary/files/
[ -d $pre_dir ] || mkdir $pre_dir
tar -xzvf $filename -C playbooks/roles/binary/files/

wget https://github.com/laincloud/networkd/releases/download/v0.1.20/networkd -P playbooks/roles/networkd/files/
wget https://github.com/laincloud/calico-upgrade/releases/download/v0.0.1/calico-upgrade -P playbooks/roles/calico-upgrade/files/bin/
wget https://github.com/projectcalico/calicoctl/releases/download/v1.2.1/calicoctl -P playbooks/roles/calico-upgrade/files/bin/