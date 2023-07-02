#!/bin/bash

echo "Criando grupos ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando diretórios ..."

mkdir /publico
chown root:root /publico
chmod 777 /publico

mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm

mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven

mkdir /sec
chown root:GRP_SEC /ven
chmod 770 /sec

echo "Criando Usuários ..."

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC

echo "Finalizado"
