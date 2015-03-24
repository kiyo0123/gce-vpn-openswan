ZONE="us-central1-a"
VM_NAME="vpn-gateway-cloud"
SOURCE_FILE="./ipsec.conf-cloud"

gcloud compute copy-files --zone=$ZONE $SOURCE_FILE $VM_NAME:~/ipsec.conf

