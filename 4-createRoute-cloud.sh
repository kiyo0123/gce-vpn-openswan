ROUTE_NAME="route-cloud-to-office"
DESTINATION_ADDRESS_RANGE=10.120.0.0/16
VPN_GATEWAY_NETWORK_IP=10.240.135.22
NETWORK_NAME="cloud-net"

gcloud compute routes create $ROUTE_NAME --destination-range $DESTINATION_ADDRESS_RANGE \
         --next-hop-address $VPN_GATEWAY_NETWORK_IP \
         --network $NETWORK_NAME \
         --tags vpn
