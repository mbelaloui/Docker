# Docker

<h1>Docker</h1>

	definition
		né du movement DevOps, est un outil qui permet de gérer des conteneurs tainers qui servirons a executé des applications dans des environements distincts.
Conteneur vm ??

    le conteneurs par apport a une vm, va partager quelques fichiers avec le conteneurs ou l'os dans le quel il est lancé.


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

eval "($docker-machine machie_name)"  ==> 'pour assigner les variables specifique a docker dans le terminal'
    NB : en changant le nom de l'environement passer a la commande eval, on peut lancer nos conteneurs laiileur dans le cloud par exemple !!!





sources :
 - https://lucasvidelaine.wordpress.com/2018/01/29/utilisation-de-dockerhub/
 - https://www.wanadev.fr/24-tuto-docker-demarrer-docker-partie-2/