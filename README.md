# shellscript

# comando para instalar .zip e java

# Comando para colonar repositorio, dar permissões a arquivos do repositorio, executar container e executar .jar
cd / && git clone https://github.com/NetoOSantos/shellscript.git && cd /./shellscript/ && chmod +x script-docker-mysql.sh && chmod +x sqlScript.sql && chmod 777 keep.jar && ./script-docker-mysql.sh && sudo docker start contkeep && java -jar keep.jar

# Comando para excluir contener contkeep e excluir diretorio shellscript
sudo docker stop contkeep && sudo docker rm contkeep && cd .. && sudo rm -r /shellscript


