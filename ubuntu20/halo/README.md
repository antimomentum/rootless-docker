# Example usage for Halo

Assumes you've installed rootless docker. It is recommended you install ipset and run the firewall.sh rules before usng the following command:


    docker run -v /home/testuser/halopull:/game \
    -e INTERNAL_PORT=2302 \
    -it \
    -p 2302:2302/udp \
    --add-host=s1.master.hosthpc.com:34.197.71.170 \
    --add-host=hosthpc.com:34.197.71.170 \
    wineconsole/halo
