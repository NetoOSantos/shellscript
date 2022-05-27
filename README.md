# # "------------------------------------------------------------"
# "===  SCRIPT INSTALLER  |  Autor: Walderley Neto ==="
# # "------------------------------------------------------------"

# comando para instalar .zip, java, docker e imagem MySQL
Sudo apt update && sudo apt upgrade -y && Sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y && sudo apt install zip && curl -s "https://get.sdkman.io" | bash && source "/home/urubu100/.sdkman/bin/sdkman-init.sh" && sudo apt install openjdk-11-jre-headless && Sudo apt install Docker.io && Sudo systemctl start Docker && Sudo Docker pull mysql:5.7

# Comando para colonar repositorio, dar permissões a arquivos do repositorio, executar container e executar .jar
cd / && git clone https://github.com/NetoOSantos/shellscript.git && cd /./shellscript/ && chmod +x script-docker-mysql.sh && chmod +x sqlScript.sql && chmod 777 keep.jar && ./script-docker-mysql.sh && sudo docker start contkeep && java -jar keep.jar

# Comando para abrir o MySQL no Docker. ps: o comando acima deve ter sido executado, para que esse funcione
sudo docker exec -it contkeep bash && mysql -u root -p && show databases; && use keep; && show tables;

# Comando para excluir contener contkeep e excluir diretorio shellscript
sudo docker stop contkeep && sudo docker rm contkeep && cd .. && sudo rm -r /shellscript


