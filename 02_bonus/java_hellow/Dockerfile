FROM    openjdk:7

COPY    main.java /usr/src/hellow/

WORKDIR /usr/src/hellow

RUN     javac main.java

CMD     [ "java", "main" ]


#docker image build -t hellow_java .
#docker run hellow_java