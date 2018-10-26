# Docker

<h1>Docker</h1>

	c'est quoi docker ??
		né du movement DevOps, est un outil qui permet de gérer des conteneurs qui servirons a executé des applications de manière isolé dans des environements distincts.
Conteneur <==> vm ??

    Le conteneur par apport a une vm va partager quelques fichiers avec l'os dans le quel il est lancé, alors que la vm est totalement isole de son environement. Le conteneur permet de garantir la maitrise de l'environement d'execution de l'application dans le conteneur

images:

    contient les elements qu'on a decide d'installer dans notre conteneur, en executant une image on lance un conteneur. Les images sont creees a partir de fichiers de configuration nommes <Dockerfiles>.

Dockerfile:

    est le fichier sources qui va nous permettre de creer une images, il peut contenir d'autres dockerfiles, ou contenue dans d'autres dockerfiles.

Compose:

    est un outil pour executer et definir des applications multi-conteneurs.

Volumes:

    nous permet de sauvegarder des donnees generees par des conteures, ils ont la carecteristique de simlifier la sauvegarde et la migration de donnees.

Docker Swarm:

    permet de faciliter la montee en charge et de garantir une haute disponibilite des conteuneurs lors de leur mise en production.

Kubernetes:

    developper par google, et une sollution alternative pour swarm, peut cotpyer de facon native swarm dans docker.


pour lancer une commande de docker machine il faut suivre ce shema :

    docker-machine [opions] commande [arg]

    options :
        --debug     activer le mode debug
        --help      afficher le help

    commande :
    
        docker-machine creart machie_name ==> 'pour cree un conteneurs docker'
            on peut changer l'envirement dans le quel on va cree notre conteneurs via l'option --driver 'nom_env' 'ex --driver virtualbox'
        docker-machine ls ==> 'lister les conteneurs existante'

        docker-machine rm machie_name ==> 'supprimer machie_name'

        docker-machine start ==> 'demarer le conteneurs machie_name'

        docker-machine stop ==> 'arreter le conteneurs machie_name'

        docker-machine status ==> 'arreter le conteneurs machie_name'

        docker-machine ip ==> 'recuperer les ips du conteneurs machie_name'

        docker-machine url machie_name ==> 'recuperer l'url du conteneurs machie_name'

        eval "($docker-machine env machie_name)"  ==> 'pour assigner les variables specifique a docker dans le terminal'
            NB : en changant le nom de l'environement passer a la commande eval, on peut lancer nos conteneurs laiileur dans le cloud par exemple !!!





sources :
 - https://lucasvidelaine.wordpress.com/2018/01/29/utilisation-de-dockerhub/
 - https://www.wanadev.fr/24-tuto-docker-demarrer-docker-partie-2/
 - https://linuxfr.org/news/docker-tutoriel-pour-manipuler-les-conteneurs