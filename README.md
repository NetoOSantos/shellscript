# # "------------------------------------------------------------"
# "=== SCRIPT INSTALLER Keep Swimming | Autor: WALDERLEY NETO ==="
# "===            walderley.neto@bandtec.com.br               ==="
# # "------------------------------------------------------------"

# 1 - comando para instalar .zip, java, docker e imagem MySQL (Apenas copiar e colar no terminal)
Sudo apt update && sudo apt upgrade -y && Sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y && sudo apt install zip && curl -s "https://get.sdkman.io" | bash && source "/home/urubu100/.sdkman/bin/sdkman-init.sh" && sudo apt install openjdk-11-jre-headless && Sudo apt install Docker.io && Sudo systemctl start Docker && Sudo Docker pull mysql:5.7

# 2 - Comando para colonar repositorio, dar permissões a arquivos do repositorio, executar container e executar .jar (Apenas copiar e colar no terminal)
cd / && git clone https://github.com/NetoOSantos/shellscript.git && cd /./shellscript/ && chmod +x script-docker-mysql.sh && chmod +x sqlScript.sql && chmod 777 keep.jar && ./script-docker-mysql.sh && sudo docker start contkeep && java -jar keep.jar

# 3 - Passo a passo para abrir o MySQL no Docker. ps: o comando acima deve ter sido executado, para que esse funcione
1 - sudo docker exec -it contkeep bash
2 - mysql -u root -p
3 - insira a senha do banco
4 - Show databases;
5 - use keep;
6 - show tables;
7 - faça os selects que desejar!

# 4 - Comando para excluir contener contkeep e excluir diretorio shellscript (Apenas copiar e colar no terminal)
sudo docker stop contkeep && sudo docker rm contkeep && cd .. && sudo rm -r /shellscript


