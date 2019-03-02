FROM        node

RUN			npm init react-app my-app

WORKDIR     /my-app

RUN			npm install

RUN			npm audit fix

CMD			[ "npm", "start" ]

#docker image build -t react .
#docker run --rm -p80:3000 -it react