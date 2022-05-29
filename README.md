# //-----------------------------------------------------------//
# =             INSTALLER | Autor: WALDERLEY NETO              = 
# //-----------------------------------------------------------//

# 1 - Passo a passo para instalar .zip, java, docker e imagem MySQL
1. Sudo apt update && sudo apt upgrade -y && Sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y && sudo apt install zip && curl -s "https://get.sdkman.io" | bash<br/>
2. feche e acha o terminal ou execute source "/home/urubu100/.sdkman/bin/sdkman-init.sh"<br/>
3. sudo apt install openjdk-11-jre-headless && Sudo apt install Docker.io && Sudo systemctl start Docker && Sudo Docker pull mysql:5.7

# 2 - Comando para clonar repositorio, dar permissões a arquivos do repositorio, executar container e executar .jar (Apenas copiar e colar no terminal)
cd / && git clone https://github.com/NetoOSantos/shellscript.git && cd /./shellscript/ && chmod +x set-docker-mysql.sh && chmod +x sqlScript.sql && chmod 777 keep.jar && ./set-docker-mysql.sh

# 3 - Passo a passo para abrir o MySQL no Docker. ps: o comando acima deve ter sido executado, para que esse funcione
1. sudo docker exec -it contkeep bash<br/>
2. mysql -u root -p<br/>
3. insira a senha do banco<br/>
4. Show databases;<br/>
5. use keep;<br/>
6. show tables;<br/>
7. faça os selects que desejar!

# 4 - Comando para excluir contener contkeep e excluir diretorio shellscript (Apenas copiar e colar no terminal)
sudo docker stop contkeep && sudo docker rm contkeep && cd .. && sudo rm -r /shellscript



