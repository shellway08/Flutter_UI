
class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({required this.id, required this.name, required this.imageUrl, required this.isOnline});
}
// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Nick Fury',
  imageUrl: 'assets/images/chat/nick-fury.jpg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'Iron Man',
  imageUrl: 'assets/images/chat/ironman.jpeg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'Captain America',
  imageUrl: 'assets/images/chat/captain-america.jpg',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'Hulk',
  imageUrl: 'assets/images/chat/hulk.jpg',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: 'Scarlet Witch',
  imageUrl: 'assets/images/chat/scarlet-witch.jpg',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: 'Spider Man',
  imageUrl: 'assets/images/chat/spiderman.jpg',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'Black Widow',
  imageUrl: 'assets/images/chat/black-widow.jpg',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'Thor',
  imageUrl: 'assets/images/chat/thor.png',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: 'Captain Marvel',
  imageUrl: 'assets/images/chat/captain-marvel.jpg',
  isOnline: false,
);