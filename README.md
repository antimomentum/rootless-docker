# rootless-docker
Various scripts for different apps in rootless Docker.


# Example usage after running the installer for Ubuntu 20.04 LTS:


Login as our normal, no sudoer/admin/root account made by the installer:


    su - testuser


Start rootless Docker:


    bin/dockerd-rootless.sh &


You'll see a bunch of output regardless if it works. You can test Docker by doing:


    docker pull hello-world


If it says "Unable to find image locally" that means Docker is running. Give it a moment, it should also be able to fetch the image from Docker's registry as well. If it pulls the image you can actually log out of testuser now, as the installer script should have setup an alias to use docker from testuser:


    logout


You are now back to your root or sudoer account. You can run the unprivileged rootless Docker commands from this account due to the alias setup by the installer:


    docker pull hello-world
