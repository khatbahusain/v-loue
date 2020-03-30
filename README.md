
# V-loue : Location de vélo entre particuliers (version MVP)


## 1. Présentation 


### V-loue  intervient en proposant à toute personne possédante déjà un vélo mais ne l'utilisant pas h 24 de louer à d'autres personnes pour un petit prix.


## 2. Parcours utilisateur 


  * L'utilisateur peut soit proposer son vélo à la location, soit louer un vélo proposé.

  * L'utilisateur doit créer un compte utilisateur pour louer ou proposer un 	vélo.

  * L'utilisateur qui loue doit rentrer les informations classiques d'identité(nom, prénom....).

  * On peut consulter les offres sans compte utilisateur.	
	
  * L’utilisateur voit ses locations proposées ou prises.

  * Les utilisateurs peuvent communiquer entre eux par messages privés.

  * Les utilisateurs peuvent noter et commenter les autres utilisateurs.



## 3. Concrètement et techniquement

### 3.1. Base de données

* User : Une base de donnée utilisateur contenant tous les profils disponibles sur l'appli.
* Rent : Une base de donnée contenant les différentes locations.
* Bike : Les vélos disponibles sur le site.

### 3.2. Front

* HTML5 - CSS3 -JS
* Utilisation de Bootstrap.


### 3.3. Backend

* Ruby (version: 2.6.3p62)
* Rails (version: 6.0.2.1)

# Installation en local
* Configuration

``` git clone https://github.com/khatba/v-loue.git ```

``` cd v-loue ```

``` bundle install ```

* Database creation

``` rails db:create ```

``` rails db:migrate ```

``` rails server ```

*  http://localhost:3000/


*  Compte Administrateur
email : v-loue2020@yopmail.com
password : 123456

* faux paiement Stripe
N° carte : 4242 4242 4242 4242
Expiration : 10/22
CVC : 123



Bonne visite !!!


## lien Heroku: 
https://v-loue.herokuapp.com/

