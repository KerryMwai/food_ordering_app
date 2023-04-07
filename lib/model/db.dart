import 'dart:ui';
import 'package:online_ordering_app/constants/colors.dart';

List recommendedItems = [
  {
    "image": "assets/images/snack1.jpg",
    "name": "Hamburg",
    "price": 15.0,
    "card-color": pink.shade100,
    "text-color": pink.shade500
  },
  {
    "image": "assets/images/snack2.jpg",
    "name": "Chips",
    "price": 13.0,
    "card-color": blue.shade200,
    "text-color": blue.shade500
  },
  {
    "image": "assets/images/snack9.jpg",
    "name": "Pizza",
    "price": 17.0,
    "card-color": orange.shade100,
    "text-color": orange.shade500
  },
  {
    "image": "assets/images/snack11.jpg",
    "name": "Cheeze",
    "price": 10.0,
    "card-color": green.shade100,
    "text-color": green.shade500
  },
  {
    "image": "assets/images/snack18.jpg",
    "name": "Pilau",
    "price": 21.0,
    "card-color": red.shade100,
    "text-color": red.shade500
  },
];

List<String> tabTitles = [
  "Featured",
  "Combos",
  "Favorites",
  "Recommended",
  "Shared"
];

List featuredItems = [
  {
    "image": "assets/images/snack2.jpg",
    "name": "Chips",
    "rating": 4,
    "current-price": 10,
    "previous-price": 12,
  },
  {
    "image": "assets/images/snack20.jpg",
    "name": "rasperry cake",
    "rating": 5,
    "current-price": 13,
    "previous-price": 16,
  },
  {
    "image": "assets/images/hamburg1.jpg",
    "name": "Cake",
    "rating": 3,
    "current-price": 17,
    "previous-price": 20,
  },
  {
    "image": "assets/images/pizza.jpg",
    "name": "Pizza",
    "rating": 5,
    "current-price": 16,
    "previous-price": 19,
  },
  {
    "image": "assets/images/snack1.jpg",
    "name": "Hot dog",
    "rating": 2,
    "current-price": 21,
    "previous-price": 25,
  },
  {
    "image": "assets/images/hamburg.jpg",
    "name": "Hamburg",
    "rating": 4,
    "current-price": 18,
    "previous-price": 19,
  },
  {
    "image": "assets/images/Panipuri.jpg",
    "name": "Panipuri",
    "rating": 5,
    "current-price": 22,
    "previous-price": 28,
  },
];

List combos = [
  {
    "image": "assets/images/snack10.jpg",
    "name": "Bimbo",
    "rating": 5,
    "current-price": 21,
    "previous-price": 25,
  },
  {
    "image": "assets/images/snack14.jpg",
    "name": "Mothers Pride",
    "rating": 3,
    "current-price": 15,
    "previous-price": 18,
  },
  {
    "image": "assets/images/snack18.jpg",
    "name": "Bost Bread",
    "rating": 2,
    "current-price": 13,
    "previous-price": 17,
  },
  {
    "image": "assets/images/snack8.jpg",
    "name": "Davidovich Bagels",
    "rating": 4,
    "current-price": 19,
    "previous-price": 21,
  },
  {
    "image": "assets/images/tacos.jpg",
    "name": "Tacos Panipuri",
    "rating": 5,
    "current-price": 27,
    "previous-price": 30,
  },
  {
    "image": "assets/images/snack23.jpg",
    "name": "Wonder Bread",
    "rating": 2,
    "current-price": 18,
    "previous-price": 24,
  },
  {
    "image": "assets/images/snack20.jpg",
    "name": "Roman meal",
    "rating": 4,
    "current-price": 24,
    "previous-price": 28,
  },
];

List favorites = [
  {
    "image": "assets/images/Samosachutney.jpg",
    "name": "Samosachutney Hovis",
    "rating": 5,
    "current-price": 22,
    "previous-price": 26,
  },
  {
    "image": "assets/images/snack7.jpg",
    "name": "Betty Crocker",
    "rating": 4,
    "current-price": 15,
    "previous-price": 19,
  },
  {
    "image": "assets/images/snack11.jpg",
    "name": "Boulder Brands",
    "rating": 1,
    "current-price": 17,
    "previous-price": 22,
  },
  {
    "image": "assets/images/snack8.jpg",
    "name": "Davidovich Bagels",
    "rating": 4,
    "current-price": 19,
    "previous-price": 21,
  },
  {
    "image": "assets/images/snack4.jpg",
    "name": "Panipuri",
    "rating": 3,
    "current-price": 26,
    "previous-price": 30,
  }
];

List recommended = [
  {
    "image": "assets/images/snack1.jpg",
    "name": "Hamburg",
    "rating": 4,
    "current-price": 12,
    "previous-price": 18,
  },
  {
    "image": "assets/images/snack2.jpg",
    "name": "Chips",
   "rating":5,
    "current-price":20,
    "previous-price":21,
  },
  {
    "image": "assets/images/snack9.jpg",
    "name": "Pizza",
    "rating": 2,
    "current-price": 13,
    "previous-price": 20,
  },
  {
    "image": "assets/images/snack11.jpg",
    "name": "Cheeze",
    "rating":4,
    "current-price":15,
    "previous-price":19,
  },
  {
    "image": "assets/images/snack18.jpg",
    "name": "Pilau",
    "rating":5,
    "current-price":18,
    "previous-price":20,
  },
];


List shared = [
  {
    "image": "assets/images/snack6.jpg",
    "name": "Polarbröd",
    "rating": 4,
    "current-price": 16,
    "previous-price": 18,
  },
  {
    "image": "assets/images/snack17.jpg",
    "name": "Entenmann's",
   "rating":5,
    "current-price":17,
    "previous-price":22,
  },
  {
    "image": "assets/images/snack24.jpg",
    "name": "King's Hawaiian",
    "rating": 4,
    "current-price": 13,
    "previous-price": 15,
  },
  {
    "image": "assets/images/snack12.jpg",
    "name": "Sunbeam Bread",
    "rating":5,
    "current-price":16,
    "previous-price":18,
  }
];
