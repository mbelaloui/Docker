# Docker

<h1>Docker</h1>

	c'est quoi docker ??
		né du movement DevOps, est un outil qui permet de gérer des conteneurs qui servirons a executé des applications de manière isolé dans des environements distincts.
        docker permet une abstration total de l'environement d'execution, on utilisera les memes commandes dans os/linux/windows pour manipuler des conteurs. docker est directement integre au niveux du kernel de linux, ce qui nous permet de l'utiliser sans sur couche, toute fois il est primordiale d'avoir la docker machine dans windows et os.
        actuellement il ya une application docker pour windows et application docker pour os qui nous perment de l'excuter sans la docker machine. toute fois on aura besoin de la docker-macine dans tout les cas pour gerer plusieur docker host sur le reseau, le cloud ou localement de maniere efficace.        

docker engine

    est le client-serveur qui contien le docker demon, l'api rest et le clinet docker CLI, docker engine accept les commande tell que:
        - docker ps pour afficher la list des conteurn en cours d'execution.
        - docker run <image> pour lancer une nouvelle instance d'une image.
        - docker ls pour lister les image.
        etc...

docker-machine

    une sur couche de docker engine qui lui permet de s'executer de maniere trasparente dans divers os, on utilise docker-machine pour cree et gerer des hosts docker engine.
    docker machine a son propre CLI <docker-machine> et le docker engine client.
    Il s'ufffit de faire  pointer la Commande ligne interface <CLI> de docker-machine a notre conteneur host <docker engine> afin d'utiliser directement la commande "docker" et ce avec <docker-machine env machie_name>.
    les docker host peuvent etre local, ou non.



Conteneur <==> vm ??

    Le conteneur par apport a une vm va partager quelques fichiers avec l'os dans le quel il est lancé, alors que la vm est totalement isole de son environement. Le conteneur permet de garantir la maitrise de l'environement d'execution dans le conteneur

images:

    contient les elements de configuration de notre environement, en executant une image on lance un conteneur. Les images sont creees a partir de fichiers de configuration nommes <Dockerfiles>.

Dockerfile:

    est le fichier sources qui va nous permettre de creer une images, cette image est isole du reste de son environement donc on doit lui ajouter des liens <mapping ports> vers l'exterieure, et specifier les fichiere qu'on va copiere a l'interieure de l'environement pour les utilisr, cette configuration nous permet de garantire le comportement de notre application quelque soit l'environement dans lequel on l'execut 
        structure du dockerfile :

            # Use an official Python runtime as a parent image
            FROM python:2.7-slim

            # Set the working directory to /app
            WORKDIR /app

            # Copy the current directory contents into the container at /app
            COPY . /app

            # Install any needed packages specified in requirements.txt
            RUN pip install --trusted-host pypi.python.org -r requirements.txt

            # Make port 80 available to the world outside this container
            EXPOSE 80

            # Define environment variable
            ENV NAME World

            # Run app.py when the container launches
            CMD ["python", "app.py"]


Compose:

    est un outil pour executer et definir des applications multi-conteneurs.

Volumes:

    nous permet de sauvegarder des donnees generees par des conteures, ils ont la carecteristique de simplifier la sauvegarde et la migration de donnees.

Docker Swarm:

    permet de faciliter la montee en charge et de garantir une haute disponibilite des conteuneurs lors de leurs mise en production.

Kubernetes:

    developper par google, et une sollution alternative pour swarm, peut cotpyer de facon native swarm dans docker.


pour lancer une commande de docker machine il faut suivre ce shema :

    docker-machine [opions] commande [arg]

    options :
        docker-machine --help

    commande :
    
        docker-machine creart --driver virtualbox machie_name ==> 'pour cree une machine virtuelle' cette coamnde va telecharger une version light de linux boot2docker avec un deaon docker installer, cree et salnce virtualbox avec docker demarer
            dans cette commande on peut changer l'envirement dans le quel on va cree notre conteneurs via l'option --driver 'nom_env' 'ex --driver virtualbox'

         on doit dire au shell de comuniquer avec la nouvelle machine, avec :
        
            docker-machine env machine_name

        puis conecter notre shell a la nouvelle machine:

            eval "($docker-machine env machie_name)"  ==> 'pour assigner les variables specifique a docker dans le terminal'
        
        apre ca on poura executer les commande docker sasn problemes 

        NB : on devera repeter ces action des qu'on ouvre un nouveu shell ou qu'on redemare la mahcine 

        docker-machine ls ==> 'lister des machine existantes'

        docker-machine rm machie_name ==> 'supprimer la machine machine_name'

        docker-machine start ==> 'demarer la machine machie_name'

        docker-machine stop ==> 'arreter la machine machie_name'

        docker-machine status ==> 'status de la machine machie_name'

        docker-machine ip ==> 'recuperer l'ip de la machine machie_name'

        docker-machine url machie_name ==> 'recuperer l'url de la machine machie_name'

        
pour lancer une commande de docker engine il faut suivre ce shema :

    docker [opions] commande [arg]

    options :
        docker --help

    commande :


        docker pull <image> ==> pour recuperer une images sans la lancer

        docker images ==> pour lister les images presentes sur la machine

        docker run <image> ==> pour executer une image
                run -i pour ouvrire STDIN
                run -t pour pouvoir interagir avec le conteur dans un shell
                run -d pour lancer le conteneur en ariere plan
                -p   port host/ port conteneur 
                    pour mapper le       conteneur avec la machine host
                -v dir_1:dir2 ==>
                     dir1 le dossier que l'on veut partager depuis notre host
                     dir2 le dossier avec lequel on veut le reliere dans le conteneur
        docker ps ==> lister tout les conteuneurs actifs
                ps -a pour lister tout les conteur meme seux qui ne sont pas actif
        
        docker rm <id/nom conteneur> ==> supprimer un conteuneur arrete

        docker rmi <imager> ==> supprimer une image

        docker start <id/nom conteneur> ==> 'demmarer le conteuneur'

        docker stop <id/nom conteneur>==> 'arreter le conteuneur'

        docker restart <id/nom conteneur> ==> 'redemmarer le conteuneur'

        docker inspect <id/nom conteneur> ==> 'desciption detaillee du conteuneur'

pour lancer une commande de docker volume il faut suivre ce shema :

    docker volume [opions] commande

    options :
        docker --help

    commande :

    docker volume creart volume_name ==> 'pour cree un espace de stockage"

    docker volume inspect volume_name ==> 'pour afficher les informations detailler sur le volume_name'

    docker volume ls ==> 'lister les volumes'
    
    docker volume rm volume_name ==> 'supprimer un volume'
    
    docker volume prune ==> 'supprimer tout les volumes unitiliser'



sources :
    - https://lucasvidelaine.wordpress.com/2018/01/29/utilisation-de-dockerhub/
    - https://www.wanadev.fr/24-tuto-docker-demarrer-docker-partie-2/
    - https://linuxfr.org/news/docker-tutoriel-pour-manipuler-les-conteneurs
    - http://blog.ippon.fr/2014/10/20/docker-pour-les-nu-pour-les-debutants/
    - https://www.lebigdata.fr/docker-definition
    - https://medium.freecodecamp.org/docker-easy-as-build-run-done-e174cc452599


a tester 19, [24, 30]