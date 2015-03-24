NETWORK="cloud-net"
ZONE="us-central1-a"
VM_NAME="vpn-gateway-cloud"

gcloud compute instances create $VM_NAME --can-ip-forward \
	--network $NETWORK \
	--zone $ZONE \
	--image debian-7 \
	--tags vpn

