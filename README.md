# Projet initialisé sous React.

Le projet peut-être trouvé sur Github à cette adresse : `https://github.com/Alexandre-COURBOIS/cicd-react`

## Prise en main du projet :

Une fois le projet cloné via Github depuis l'adresse renseignée ci-dessus :

### Executer un `npm install`

Permet la mise en place des packets dont le projet à besoin pour fonctionner

### Les différentes commandes pouvant-être executées : 

### `npm test`

Permet l'éxecution des tests de l'application par défaut

### `npm start`

Permet l'execution de l'application afin de la voir sur localhost:3000

### `npm run build`

Permet de générer le fichier de build de l'application 

### Github Action dans le fichier workflows : 
`update_on_push.yaml`

- Ce github action ne s'execute que sur la branche master
- L'objectif de celui ci est d'installer le projet, de produire la version de build, ainsi que d'executer les tests grace aux commandes :
````
- npm install
- npm run build
- npm run test
````
- En dernier lieu celui-ci se connecte au serveur via différentes Github actions secret key qui sont elles à définir sur github : 

Variables à définir : Votre NomUtilisateur & NomDuProjet :

`https://github.com/VotreNomUtilisateur/NomDuProjet/settings/secrets/actions`

Différentes clées sont à définirs sur l'url adaptée précèdement renseignée en cliquant sur : 
`New Repository Secret`

Créer : 
```
- HOST : L'IP du remote server
- KEY  : Votre clé privé correspondant à la clé public renseignée sur le host server
- PORT : Port par défaut de la connexion ssh sur le server
- USERNAME : Votre nom d'utilisateur sur le server
```

Penser également à modifier dans le target path le nom d'utilisateur qui correspondra au votre sur le remote server

Une fois fait, chaque push sur votre dépot permettra la génération d'une version de build automatisée et déposera celle-ci à la racine de votre utilisateur dans le fichier WEB. 
