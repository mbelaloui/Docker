# Docker

<h1>Docker</h1>

	definition
		né du movement DevOps, est un outil qui permet de gérer des containers qui servirons a executé des applications dans des environements distincts.
Cntenaire vm ??

    le containers par apport a une vm, va partager quelques fichiers avec le conetaire ou l'os dans le quel il est lancé.


pour lancer une commande de docker machine il faut suivre ce shema :

    docker-machine [opions] commande [arg]

    options :
        --debug     activer le mode debug
        --help      afficher le help

    commande :



docker-machine creart machie_name ==> <pour cree un conetenaire docker>
    on peut changer l'envirement dans le quel on va cree notre contenaire via l'option --driver <nom_env> <ex --driver virtualbox>
docker-machine ls ==> <lister les contenaires existante>

docker-machine rm machie_name ==> <supprimer machie_name>

docker-machine start ==> <demarer le contenaire machie_name>

docker-machine stop ==> <arreter le contenaire machie_name>

docker-machine status ==> <arreter le contenaire machie_name>

docker-machine ip ==> <recuperer les ips du contenaire machie_name>

docker-machine url machie_name ==> <recuperer l'url du contenaire machie_name>

eval "($docker-machine machie_name)"  ==> <pour assigner les variables specifique a docker dans le terminal>
    NB : en changant le nom de l'environement passer a la commande eval, on peut lancer nos contenaires laiileur dans le cloud par exemple !!!

