#!/bin/bash

BASE_DIR=~/repogit/UTN-FRA_SO_Examenes/202406/ansible
ROLE_DIR="$BASE_DIR/roles/2do_parcial"
TEMPLATE_DIR="$ROLE_DIR/templates"
TASKS_FILE="$ROLE_DIR/tasks/main.yml"
PLAYBOOK_FILE="$BASE_DIR/playbook.yml"

mkdir -p $TEMPLATE_DIR
mkdir -p $ROLE_DIR/tasks  # Asegurarse de que el directorio 'tasks' exista

IP=$(hostname -I | awk '{print $1}')
CORES=$(nproc)

cat <<EOL > $TEMPLATE_DIR/datos_alumno.txt.j2
Nombre: {{ nombre }}
Apellido: {{ apellido }}
Division: {{ division }}
EOL
echo "Archivo $TEMPLATE_DIR/datos_alumno.txt.j2 creado."

cat <<EOL > $TEMPLATE_DIR/datos_equipo.txt.j2
IP: {{ ip }}
Distribución: {{ distro }}
Cantidad de Cores: {{ cores }}
EOL
echo "Archivo $TEMPLATE_DIR/datos_equipo.txt.j2 creado."

cat <<EOL > $TASKS_FILE
- name: Crear directorios necesarios
  file:
    path: "/tmp/2do_parcial/{{ item }}"
    state: directory
    mode: '0755'
  loop:
    - alumno
    - equipo

- name: Crear archivo de datos del alumno
  template:
    src: templates/datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
  vars:
    nombre: "Adrian Oscar"
    apellido: "Vielma Lucero"
    division: "115"

- name: Crear archivo de datos del equipo
  template:
    src: templates/datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
  vars:
    ip: "$IP"
    distro: "Ubuntu"
    cores: "$CORES"

- name: Configurar sudoers para el grupo 2PSupervisores
  copy:
    content: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    dest: /etc/sudoers.d/2psupervisores
    validate: 'visudo -cf %s'
EOL
echo "Archivo $TASKS_FILE creado."

cat <<EOL > $PLAYBOOK_FILE
---
- name: Ejecutar el playbook de 2do parcial
  hosts: localhost
  tasks:
    - include_role:
        name: 2do_parcial
EOL
echo "Archivo $PLAYBOOK_FILE creado."

cd $BASE_DIR
ansible-playbook -i inventory/hosts playbook.yml
