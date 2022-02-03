# Rails Rent Cars

## Car rental between individuals

Exercice for the RNCP6 certification at Le Wagon.<br>
Develop, alone in 8 hours, an application with Ruby on Rails, a given DB scheme and the following specifications.

```
You need to create a car rental marketplace between individuals
```
User interface :
- As a user, I can access the home page.
- As a user, I can see the list of all cars.
- As a user, I can access the details of a car.
- As a user, I can reserve a car.

Specifications :
- Follow the conventions of `rails`.
- The home page must contain a link to the car list.
- The page listing the cars must contain links to the details of each car.
- The car details page must contain a link to return to the page listing all cars.
- The car details page must contain the form for making a reservation.
- The reservation form must use a date selector to facilitate the entry of dates <a href="https://flatpickr.js.org/examples/" target="_blank">Flatpickr</a> to facilitate the entry of dates, such as <a href="https://flatpickr.js.org/examples/#range-calendar" target="_blank">range</a>, most suitable for entering a period.
- When submitting the reservation form, the user should be redirected to the car details page and a <a href="https://www.rubyguides.com/2019/11/rails-flash-messages/" target="_blank">notification flash</a> must be displayed to confirm the reservation.

### Home page
![image](https://user-images.githubusercontent.com/89397894/152423151-346ba578-4032-437e-9c09-a241ae5bbceb.png)

### Index page with random pictures matching keywords (LoremFlickr)
![image](https://user-images.githubusercontent.com/89397894/152425397-fcdbe9d1-6ed7-4732-b564-ce79753ec164.png)

### Show of a car
![image](https://user-images.githubusercontent.com/89397894/152425552-309f53b1-0f82-4efd-8af7-ea93ca3385a6.png)

### Booking with Flatpickr
![image](https://user-images.githubusercontent.com/89397894/152425713-03c76559-b7a8-4b3b-a02d-fa8a2562f087.png)


Dans cet exercice, vous devez implémenter des fonctionnalités dans une application web `rails` à partir du cahier des charges spécifié ci-dessous et correspondant à votre sujet :

```
Vous devez créer une marketplace de location de voitures entre particuliers
```

## Setup

Clonez le dépôt GitHub et exécutez les commandes habituelles vous permettant de lancer l'application sur votre ordinateur.

Si vous voyez s'afficher le message `rbenv: version 2.7.3 is not installed`, exécutez la commande suivante pour installez la version de `ruby` correspondante :

```bash
rbenv install 2.7.3 && gem install bundler rubocop pry pry-byebug
```

Vous pourrez alors réexécuter les commandes habituelles vous permettant de lancer l'application.

## Base de données

Effectuez les modifications du code nécessaires à l'obtention du schema de données suivant :

<img src="https://github.com/lewagon-assess/rails-rent-cars-challenge/blob/master/db_schema.png?raw=true" alt="DB schema">

Une voiture n'est pas valide :

- Si elle n'a pas de marque.
- Si elle n'a pas de modèle.
- Si elle n'a pas d'adresse.
- Si son prix journalier est inférieur ou égal à zéro.

Une réservation n'est pas valide :

- Si elle n'a pas de date de début.
- Si elle n'a pas de date de fin.

La suppression d'un utilisateur doit entraîner la suppression de ses voitures et de ses réservations. La suppression d'une voiture doit entraîner la suppression de ses réservations.

**NB :** La gem `devise` a déjà été ajoutée et la table `users` a déjà été créée.

## Interface utilisateur

Effectuez les modifications du code nécessaires à l'implémentation des parcours utilisateurs suivants :

- En tant qu'utilisateur, je peux accéder à la page d'accueil.
- En tant qu'utilisateur, je peux voir la liste de toutes les voitures.
- En tant qu'utilisateur, je peux accéder aux détails d'une voiture.
- En tant qu'utilisateur, je peux réserver une voiture.

## Spécifications

- Respectez les conventions de `rails`.
- La page d'accueil doit contenir un lien permettant d'accéder à la liste des voitures.
- La page listant les voitures doit contenir les liens permettant d'accéder aux détails de chaque voiture.
- La page affichant les détails d'une voiture doit contenir un lien permettant de retourner sur la page listant toutes les voitures.
- La page affichant les détails d'une voiture doit contenir le formulaire permettant de faire une réservation.
- Le formulaire de réservation doit utiliser un sélecteur de date <a href="https://flatpickr.js.org/examples/" target="_blank">Flatpickr</a> pour faciliter la saisie des dates, de type <a href="https://flatpickr.js.org/examples/#range-calendar" target="_blank">range</a>, le plus adapté a la saisie d'une période.
- Lors de la soumission du formulaire de réservation, l'utilisateur doit être redirigé vers la page de détails de la voiture et une <a href="https://www.rubyguides.com/2019/11/rails-flash-messages/" target="_blank">notification flash</a> doit s'afficher pour confirmer la réservation.

## Ressources

Pour avoir une interface soignée, nous vous conseillons d'utiliser :

- <a href="https://getbootstrap.com/docs/4.6/getting-started/introduction/" target="_blank">Bootstrap</a> (déjà installé)
- <a href="https://uikit.lewagon.com/" target="_blank">L'UI Kit du Wagon</a>
