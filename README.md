# gce-vpn-openswan
Setting up VPN environment according to online document. 
https://cloud.google.com/compute/docs/networking#settingupvpn
Create 2 networks on GCE. One is cloud-net and the other is office-net. Build openswan ipsec server on both network and set up VPN connection between two network. 

1. Create Network
2. Create VPN Gateway
3. Create Plain VM 
4. Create Route
5. Create FW
6. Set up Openswan server
