#!/bin/bash

sudo groupadd "grupo2doparcial"
sudo groupadd "grupoalumnos"

sudo useradd -m -g "grupo2doparcial" -d "/work/2P_202406_Prog1" "2P_202406_Prog1"
sudo useradd -m -g "grupo2doparcial" -d "/work/2P_202406_Prog2" "2P_202406_Prog2"
sudo useradd -m -g "grupoalumnos" -d "/work/2P_202406_Test1" "2P_202406_Test1"
sudo useradd -m -g "grupoalumnos" -d "/work/2P_202406_Supervisor" "2P_202406_Supervisor"

sudo passwd 2P_202406_Prog1 <<< "parcial
parcial"

sudo passwd 2P_202406_Prog2 <<< "parcial
parcial"

sudo passwd 2P_202406_Test1 <<< "parcial
parcial"

sudo passwd 2P_202406_Supervisor <<< "parcial
parcial"

sudo chown "2P_202406_Prog1:grupo2doparcial" "/work/2P_202406_Prog1"
sudo chown "2P_202406_Prog2:grupo2doparcial" "/work/2P_202406_Prog2"
sudo chown "2P_202406_Test1:grupoalumnos" "/work/2P_202406_Test1"
sudo chown "2P_202406_Supervisor:grupoalumnos" "/work/2P_202406_Supervisor"
