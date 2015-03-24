ZONE="us-central1-a"
VM_NAME="vpn-gateway-office"
SOURCE_FILE="./ipsec.conf-office"
SETUP_FILE="./setupIpse.sh"

gcloud compute copy-files --zone=$ZONE $SOURCE_FILE $VM_NAME:~/ipsec.conf
gcloud compute copy-files --zone=$ZONE $SETUP_FILE $VM_NAME:~/ipsec.conf


