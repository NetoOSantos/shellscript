#!/bin/bash
# "------------------------------------------------------------------------"
# "===  SCRIPT MAKER CONTAINER - DOCKER MYSQL   |  Autor: Alexandre Gavazzi"
# "------------------------------------------------------------------------"

clear
echo "deseja criar o seu banco dentro do docker?\n
s|n"
read resposta
if [ "$resposta" == "s" ]
then
        echo "Qual a porta do Banco?"
        read portaBanco
        echo "criando o MySql, qual o nome do seu container?"
        read nomeContainer
        echo " qual o nome do seu banco de dados?"
        read nomeBanco
        echo "qual a senha do seu banco de dados?"
        read senhaRootBanco
        echo "Qual o user do Banco?"
        read userBanco
        echo "Qual a senha do user do banco"
        read senhaUserBanco

        # COMANDO DOCKER PARA CRIAR CONTAINER.
        docker run -d -p $portaBanco:3306 --name $nomeContainer -e "MYSQL_DATABASE=$nomeBanco" -e "MYSQL_ROOT_PASSWORD=$senhaRootBanco" -e "MYSQL_USER=$userBanco" -e "MYSQL_PASSWORD=$senhaUserBanco" mysql

        echo "Aguarde 20 Segundos (Inicializando Container...)"
        sleep 20
        read -p "Press Enter to continue ..."

        file_sql="sqlScript.sql"

        # COMANDO DOCKER PARA INSERIR
        docker exec -i $nomeContainer sh -c 'exec mysql -uroot -proot '$nomeBanco'' <"$file_sql"
fi
