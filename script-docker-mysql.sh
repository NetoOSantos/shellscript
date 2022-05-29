#!/bin/bash
# "------------------------------------------------------------------------"
# "===  SCRIPT MAKER CONTAINER - DOCKER MYSQL   |  Autor: Alexandre Gavazzi"
# "------------------------------------------------------------------------"

clear
echo "Criando Container Docker MySQL"
read -p "Press Enter to continue ..."

portaBanco="3306"
nomeContainer="contkeep"

nomeBanco="keep"
senhaRootBanco="root"

userBanco="urubu100"
senhaUserBanco="urubu100"

# COMANDO DOCKER PARA CRIAR CONTAINER.

docker run -d -p $portaBanco:3306 --name $nomeContainer -e "MYSQL_DATABASE=$nomeBanco" -e "MYSQL_ROOT_PASSWORD=$senhaRootBanco" -e "MYSQL_USER=$userBanco" -e "MYSQL_PASSWORD=$senhaUserBanco" mysql

echo "Aguarde 20 Segundos (Inicializando Container...)"
sleep 20
read -p "Press Enter to continue ..."

# INSERINDO DADOS NO MYSQL DO CONTAINER
# ARQUIVO SQL / ABAIXO SÓ COLOCAR O NOME DO ARQUIVO
# OBS: O ARQUIVO DEVERÁ ESTAR NA MESMA PASTA QUE O script-docker-mysql.sh OU SEJA, MESMA PASTA QUE ESTÁ ESSE SCRIPT.

file_sql="sqlScript.sql"

# COMANDO DOCKER PARA INSERIR
docker exec -i $nomeContainer sh -c 'exec mysql -uroot -proot '$nomeBanco'' <"$file_sql"

#
# "===  FIM DO SCRIPT 'script-docker-mysql.sh', OBRIGADO. ==="
# "----------------------------------------------------------"
# "===                    CRÉDITOS                        ==="
# "===                 Alexandre Gavazzi                  ==="
# "----------------------------------------------------------"