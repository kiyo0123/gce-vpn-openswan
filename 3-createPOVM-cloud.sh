NETWORK="cloud-net"
ZONE="us-central1-a"
VM_NAME="povm-cloud"

gcloud compute instances create $VM_NAME \
	--network $NETWORK \
	--zone $ZONE \
	--image debian-7 \
	--tags vpn

