
#!/bash/bin
echo "Criando diretórios.."
mkdir /publico /adm /ven /sec
echo "fim da criação"
echo "=============="
echo "ADICIONANDO GRUPOS"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "FINALIZANDO A CRIAÇÃO DO GRUPO"
echo "==========="
echo "Criando users GRP_ADM"
useradd carlos -c "Carlos vinicius" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
useradd maria -c "Maria Clara" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
useradd joao -c "Joao Assis" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
echo " users do adm adicionados"
echo "Setando os users do adm"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
echo "Usuarios adm adicionados no grupo GRP_ADM"
echo "Criando users GRP_VEN"
useradd debora -c "Debora Nascimento" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
useradd sebastiana -c "Sebastiana de Jesus" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
useradd roberto -c "Roberto Malonklvisk" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
echo "Users VEN adicionados"
echo "Setando os users do VEN"
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
echo "Usuarios VEN adicionados no grupo GRP_VEN"

echo "Criando users GRP_SEC"
useradd josefina -c "Josefina Silva" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
useradd amanda -c "Amanda Cristina" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
useradd rogerio -c "Rogerio Oliveira" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
echo "Users SEC adicionados"
echo "Setando os users do SEC"
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio
echo "Usuarios SEC adicionados no grupo GRP_SEC"
echo "======================================="
echo "Liberando grupos nas respectivas pastas"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "========================================="
echo "Trabalhando nas permissões da pasta publico"
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Modificações de permissões realizadas"
