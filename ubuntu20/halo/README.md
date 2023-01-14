# Example usage for Halo


Pull the wineconsole image:

    docker pull wineconsole/halo


Assumes you've installed rootless docker and have a folder named "halopull" containing your Halo server files. It is recommended to give testuser ownership of the halopull directory and files, like the pull.sh script does. It is recommended you install ipset and run the firewall.sh rules before usng the following command:


    docker run -v /home/testuser/halopull:/game \
    -e INTERNAL_PORT=2302 \
    -it --rm \
    -p 2302:2302/udp \
    --add-host=s1.master.hosthpc.com:34.197.71.170 \
    --add-host=hosthpc.com:34.197.71.170 \
    wineconsole/halo
