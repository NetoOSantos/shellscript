git clone seu git
cd javacli
ls
cat > Dockerfile <<EOF
FROM openjdk:11
WORKDIR /javacli/
COPY keep.jar /javacli/
CMD ["java", "-jar", "keep.jar"]
EOF

<FIM DO SCRIPT>

<baixando a imagem>

sudo docker build . -t surveillance:v1

<Criando um container com a nossa imagem>

sudo docker run --name javaCli -it <ID da imagem>

/**
aqui ele ira criar o container e executar nossa aplicação ditero
*/
__

<Caso queira entrar num container>

sudo docker exec -it <NOME CONTAINER> bash 
.
.
.
.
===========================================
#!/bin/bash