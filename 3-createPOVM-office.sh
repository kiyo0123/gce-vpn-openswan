NETWORK="office-net"
ZONE="us-central1-a"
VM_NAME="povm-office"

gcloud compute instances create $VM_NAME \
	--network $NETWORK \
	--zone $ZONE \
	--image debian-7 \
	--tags vpn

