#Permet de récupérer une image de node réduite au stricte minimum pour son bon fonctionnement
FROM node:14-alpine

#Permet de définir le répertoire d'execution
WORKDIR /app

# Permet d'ajouter le package.json et la package-lock.json a l'environnement dockers
COPY package.json .
COPY package-lock.json .

#Permet de récupérer les packets node afin de veiller au bon fonctionnement du projet
RUN npm install

#Permet de copier l'intégralité des fichiers générés dans l'environnement docker
COPY . .

#Permet de générer le build de l'application react en mode production
RUN npm run build --production

#Permet d'installer serve qui octroie la possibilitée de pouvoir libre le fichier de build précèdement généré
RUN npm install -g serve

#Permet d'executer la lecture du build sur le server et de le transposer sur une page web en local
CMD [ "serve", "-s", "build" ]
