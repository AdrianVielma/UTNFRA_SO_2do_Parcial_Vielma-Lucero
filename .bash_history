pwd
ls
ls -ld /home
ls -ld /home/*
sudo chgrp VielmaAdrian /home/VielmaAdrian
sudo usermod -aG sudo VielmaAdrian
groups VielmaAdrian
sudo whoami
sudo usermod -aG sudo VielmaAdrian
sudo gpasswd -a VielmaAdrian sudo
exit
sudo whoami
sudo chmod 750 /home/VielmaAdrian
exit
ls /home/osboxes
sudo cp -r /home/osboxes/* /home/adrian/
exit
ls
cd RTA_Examen_20241201/
ls
cat Punto_A.sh 
nano Punto_A.sh 
ls -ld /home/VielmaAdrian
sudo chmod 755 /home/VielmaAdrian
exit
ls -ld /home/VielmaAdrian
pwd
ls
cd RTA_Examen_20241201/
ls
nano Punto_A.sh 
sudo chmod u+w /home/VielmaAdrian/Punto_A.sh
exit
sudo whoami
ls
cd RTA_Examen_20241201/
nano Punto_A.sh 
sudo chmod u+w /home/VielmaAdrian/Punto_A.sh
ls -l ~/RTA_Examen_20241201/
sudo chown VielmaAdrian:VielmaAdrian ~/RTA_Examen_20241201/Punto_A.sh
ls -l ~/RTA_Examen_20241201/Punto_A.sh
sudo chown -R VielmaAdrian:VielmaAdrian ~/RTA_Examen_20241201
ls -l ~/RTA_Examen_20241201
nano Punto_A.sh 
./Punto_A.sh
chmod -R +x ~/RTA_Examen_20241201
ls -l ~/RTA_Examen_20241201
cat Punto_A.sh 
nano Punto_A.sh 
chmod +x ~/RTA_Examen_20241201/Punto_A.sh
./Punto_A.sh
lsblk
sudo apt update
sudo apt install docker.io
sudo systemctl enable docker
sudo systemctl start docker
./Punto_A.sh
lsblk
ls
cd RTA_Examen_20241201/
ls
nano Punto_A.sh 
./Punto_A.sh 
sudo systemctl status docker
sudo docker run hello-world
sudo docker ps
sudo docker stop nginx-container
sudo docker ps
pwd
ls
nano Punto_B.sh 
cat Punto_
cat Punto_B.sh 
ansible --version
sudo apt update
sudo apt upgrade -y
sudo apt install -y
ansible --version
sudo apt install ansible -y
ls
cd . .
cd ..
ls
cd UTN-FRA_SO_Examenes/
ls
sudo usermod -a -G docker $(whoami)
cd 202406/
ls
cd docker/
ls
echo "<div><h1>Sistemas Operativos - UTNFRA</h1></br><h2>2do Parcial - Diciembre 2024</h2></br><h3>Vielma Adrian</h3><h3>División: 115 </h3></div>" > index.html
sudo echo "<div><h1>Sistemas Operativos - UTNFRA</h1></br><h2>2do Parcial - Diciembre 2024</h2></br><h3>Vielma Adrian</h3><h3>División: 115 </h3></div>" > index.html
sudo chmod u+w ~/UTN-FRA_SO_Examenes/202406/docker
sudo echo "<div><h1>Sistemas Operativos - UTNFRA</h1></br><h2>2do Parcial - Diciembre 2024</h2></br><h3>Vielma Adrian</h3><h3>División: 115 </h3></div>" > index.html
sudo nano index.html
cd ~
ls
dockerlogin
dockerlogin -u adrianvielma
dockerlogin
docker login
cd ~/UTN-FRA_SO_Examenes/202406/docker
ls
cat <<EOF > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

sudo chmod u+w ~/UTN-FRA_SO_Examenes/202406/docker
cat <<EOF > Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
EOF

ls
nano Dockerfile
ls
ls -ld
sudo chmod u+w .
ls -ld
nano Dockerfile
cd ..
ls
cd ..
ls
cd RTA_Examen_20241201/
exit
su - osboxes 
