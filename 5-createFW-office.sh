NETWORK_NAME="office-net"
IP_LOCAL_VPN_GATEWAY=10.120.144.241
DESTINATION_ADDRESS_RANGE=10.240.0.0/16


# SSH
gcloud compute firewall-rules create $NETWORK_NAME-ssh --source-ranges 0.0.0.0/0 --allow tcp:22 --network $NETWORK_NAME
# allow internal
gcloud compute firewall-rules create $NETWORK_NAME-allow-internal --source-ranges 10.0.0.0/8 --allow tcp:1-65535 udp:1-65535 icmp \
         --network $NETWORK_NAME --target-tags vpn
# allow ipsec nat
gcloud compute firewall-rules create $NETWORK_NAME-allow-ipsec-nat --source-ranges $IP_LOCAL_VPN_GATEWAY/32 \
         --allow udp:4500 udp:500 --network $NETWORK_NAME --target-tags vpn
# allow all peer 対抗拠点からのパケットを通す設定
gcloud compute firewall-rules create $NETWORK_NAME-allow-all-peer --source-ranges $DESTINATION_ADDRESS_RANGE \
         --allow tcp:1-65535 udp:1-65535 icmp --network $NETWORK_NAME --target-tags vpn
         