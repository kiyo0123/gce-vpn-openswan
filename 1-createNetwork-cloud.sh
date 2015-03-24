NETWORK_NAME=cloud-net
RANGE="10.240.0.0/16"
gcloud compute networks create $NETWORK_NAME --range $RANGE


