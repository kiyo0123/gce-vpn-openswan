sudo apt-get update
sudo apt-get install strongswan -y
echo "%any : PSK \"<secret-key>\"" | sudo tee /etc/ipsec.secrets > /dev/null
sudo sysctl -w net.ipv4.ip_forward=1
sudo cp ipsec.conf /etc
sudo ipsec restart
sudo ipsec up myconn