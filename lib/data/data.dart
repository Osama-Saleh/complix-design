import 'package:design/models/post_model.dart';
import 'package:design/models/user_model.dart';

final _post0 = Post(
  imageUrl: 'assets/images/post0.jpg',
  author: User(),
  title: 'Post 0',
  location: 'Location 0',
  likes: 106,
  comments: 55,
);
final _post1 = Post(
  imageUrl: 'assets/images/post1.jpg',
  author: User(),
  title: 'Post 1',
  location: 'Location 1',
  likes: 648,
  comments: 164,
);
final _post2 = Post(
  imageUrl: 'assets/images/post2.jpg',
  author: User(),
  title: 'Post 2',
  location: 'Location 2',
  likes: 845,
  comments: 408,
);
final _post3 = Post(
  imageUrl: 'assets/images/post3.jpg',
  author: User(),
  title: 'Post 3',
  location: 'Location 3',
  likes: 354,
  comments: 25,
);
final _post4 = Post(
  imageUrl: 'assets/images/post4.jpg',
  author: User(),
  title: 'Post 4',
  location: 'Location 4',
  likes: 569,
  comments: 48,
);
final _post5 = Post(
  imageUrl: 'assets/images/post5.jpg',
  author: User(),
  title: 'Post 5',
  location: 'Location 5',
  likes: 201,
  comments: 58,
);

final posts = [_post0, _post1, _post2, _post3, _post4, _post5];
final users = [
  User(profileImageUrl: 'assets/images/user0.jpg'),
  User(profileImageUrl: 'assets/images/user1.jpg'),
  User(profileImageUrl: 'assets/images/user2.jpg'),
  User(profileImageUrl: 'assets/images/user3.jpg'),
  User(profileImageUrl: 'assets/images/user4.jpg'),
  User(profileImageUrl: 'assets/images/user5.jpg'),
  User(profileImageUrl: 'assets/images/user6.jpg'),
];

// Current User
final User currentUser = User(
  profileImageUrl: 'assets/images/user.jpg',
  backgroundImageUrl: 'assets/images/user_background.jpg',
  name: 'Osama',
  following: 328,
  followers: 768,
);
