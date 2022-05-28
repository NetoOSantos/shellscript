FROM openjdk:11
COPY keep.jar/shellscript/
WORKDIR /shellscript/
RUN bash
ENTRYPOINT java -jar keep.jar
CMD ["bash", "java", "-jar" "main"]