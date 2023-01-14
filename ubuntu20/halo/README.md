# Example usage for Halo


Pull the wineconsole image:

    docker pull wineconsole/halo


Assumes you've installed rootless docker and have a folder named "halopull" containing your Halo server files. It is recommended to give testuser ownership of the halopull directory and files, like chown in the pull.sh script does. It is recommended you install ipset and run the firewall.sh rules before using the following command:

    i=2308 && \
    docker run -itd --rm \
    --name=$i \
    -e INTERNAL_PORT=$i \
    -v /home/testuser/halopull:/game \
    -p $i:$i/udp \
    --add-host=s1.master.hosthpc.com:34.197.71.170 \
    --add-host=hosthpc.com:34.197.71.170 \
    wineconsole/halo


You can attach to the container by doing:

    docker attach --detach-keys z 2308
    

Press z to detach from the contianer without closing it.

Note: While using a variable (i) lets us set things like the container name, the actual public destination port will be randomly assigned by the Linux kernel.


# Scripting

For running testuser Docker scripts from outside the testuser account you'll want to incude the same function we put into .bashrc at the top of your script:

    docker() {
    su - testuser -c "docker $*"
    }
