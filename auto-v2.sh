#! /bin/bash

echo "adicionando diretorios "
mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "adicionando  grupos "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Adcionando usuarios "

echo "Adicionando usuario de ADM"

useradd enderson -c "enderson da silva " -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd flavio -c "flavio da silva " -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd lucas -c "lucas da silva " -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM

echo "Adicionando usuario de VEN"

useradd matheus -c "Matheus das costas" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd amanda -c "amanda das costas" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd julia -c "julia das costas" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN

echo "Adicionando SEC"
useradd miranda -c "Miranda de leitao " -m -s /bin/bash -p$(openssl passwd -6 123) -G GRP_SEC
useradd joana -c "joana de leitao " -m -s /bin/bash -p$(openssl passwd -6 123) -G GRP_SEC
useradd rafaela -c "rafaela de leitao " -m -s /bin/bash -p$(openssl passwd -6 123) -G GRP_SEC

echo "Adiocionando as permições dos diretorios  "
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

echo "Adicionando as permições de gerais"
chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

