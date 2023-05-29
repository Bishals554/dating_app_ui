class User{
  final String imageUrl;
  final String name;
  final int age;
  final String rating;
  final String gender;

  User({
    required this.rating,
    required this.name,
    required this.gender,
    required this.age,
    required this.imageUrl
  });


}

List<User>users = [
  User(
      rating: '⭐⭐⭐⭐⭐',
      name: 'Maya',
      age: 18,
      gender: 'Female',
      imageUrl: 'https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=436&q=80'
  ),

  User(
      rating: '⭐⭐⭐⭐⭐',
      name: 'Olivia',
      age: 20,
      gender: 'Female',
      imageUrl: 'https://images.unsplash.com/photo-1628015081036-0747ec8f077a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
  ),

  User(
      rating: '⭐⭐⭐⭐⭐',
      name: 'Quỳnh Lê Mạnh',
      age: 21,
      gender: 'Female',
      imageUrl: 'https://images.unsplash.com/photo-1631947430066-48c30d57b943?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=416&q=80'
  ),
  User(
      rating: '⭐⭐⭐⭐⭐',
      name: 'Sophia',
      age: 21,
      gender: 'Female',
      imageUrl: 'https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
  ),
  User(
      rating: '⭐⭐⭐⭐⭐',
      name: 'Emma',
      age: 21,
      gender: 'Female',
      imageUrl: 'https://images.unsplash.com/photo-1531927557220-a9e23c1e4794?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'
  ),
  User(
      rating: '⭐⭐⭐⭐⭐',
      name: 'Rojan Parajuli',
      age: 22,
      gender: 'male',
      imageUrl: 'https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/333447932_549671063631140_3746730517902871524_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=pKL18stN9DMAX-536CC&_nc_ht=scontent.fktm17-1.fna&oh=00_AfDS2LHQFm9QnUZKpl0aN9cCk9xLhHvlGp_BLaUqZVuixA&oe=6479E466'
  )

];

