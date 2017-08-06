# kitchen-debian

1. Download a Debian install medium and start it
2. Hit escape key
3. Type install auto=true priority=critical preseed/url=https://raw.githubusercontent.com/bob5ec/kitchen-debian/master/preseed


# TODO
* deploy vault docker image somewhere
* create deploy script to register new debian installation within vault
 create ssh key and put IP along with private key into vault
* create kitchen.io plugin to provide newly created installation to kitchen
