ROUTE_NAME="route-office-to-cloud"
DESTINATION_ADDRESS_RANGE=10.240.0.0/16
VPN_GATEWAY_NETWORK_IP=10.120.144.241
NETWORK_NAME="office-net"

gcloud compute routes create $ROUTE_NAME --destination-range $DESTINATION_ADDRESS_RANGE \
         --next-hop-address $VPN_GATEWAY_NETWORK_IP \
         --network $NETWORK_NAME \
         --tags vpn
