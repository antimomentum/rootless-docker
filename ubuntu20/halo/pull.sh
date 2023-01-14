apt install unzip wget ipset -y
wait
wget -O halopull.zip https://github.com/antimomentum/halopull/archive/refs/heads/master.zip && \
unzip halopull.zip && \
mv halopull-master halopull && \
mv halopull /home/testuser/ && \
chown -R testuser: /home/testuser/halopull && \
wget https://raw.githubusercontent.com/antimomentum/haloce/master/firewalls/firewall.sh && \
chmod +x firewall.sh && \
mv firewall.sh ~/firewall.sh
