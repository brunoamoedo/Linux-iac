#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios"

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM 
passwd -e carlos
useradd maria -m -s /bin/bash -p $(openssl passwd senha123)  -G GRP_ADM 
passwd -e maria 
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM 
passwd -e joao 

useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN 
passwd -e debora 
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN 
passwd -e sebastiana 
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN 
passwd -e roberto 

useradd josefina -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC 
passwd -e josefina 
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123)  -G GRP_SEC  
passwd -e amanda 
useradd rogerio -m -s /bin/bash -p $(openssl passwd senha123)  -G GRP_SEC 
passwd -e rogerio 

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim... "

