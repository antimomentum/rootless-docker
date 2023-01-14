cat <<TUSH >~/.bashrc
halo() {
    echo "\$*" >> /home/testuser/test.txt
}
TUSH

rm haloalias.sh
