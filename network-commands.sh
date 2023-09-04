sudo networkctl -a
sudo networkctl status br0

# current list of libvirt networks
virsh net-list

# create libvirt network using existing host bridge
virsh net-define host-bridge.xml
virsh net-start host-bridge
virsh net-autostart host-bridge

# state should be active, autostart, and persistent
virsh net-list --all