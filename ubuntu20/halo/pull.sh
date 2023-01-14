apt install unzip wget -y
wait
wget -O halopull.zip https://github.com/antimomentum/halopull/archive/refs/heads/master.zip && \
unzip halopull.zip && \
mv halopull-master halopull && \
mv halopull /home/testuser/ && \
chown -R testuser: /home/testuser/halopull
