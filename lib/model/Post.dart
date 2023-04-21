class Post {
  final String title;
  final String imageUrl;
  final String description;
  final DateTime date;

  Post(
      {required this.title,
      required this.imageUrl,
      required this.description,
      required this.date});
}

List<Post> posts = [
  Post(
    title: 'Post 1',
    imageUrl: 'https://picsum.photos/300/200',
    description: 'Descrição do Post 1',
    date: DateTime.now(),
  ),
  Post(
    title: 'Post 2',
    imageUrl: 'https://picsum.photos/300/200',
    description: 'Descrição do Post 2',
    date: DateTime.now(),
  ),
  Post(
    title: 'Post 3',
    imageUrl: 'https://picsum.photos/300/200',
    description: 'Descrição do Post 3',
    date: DateTime.now(),
  ),
];
