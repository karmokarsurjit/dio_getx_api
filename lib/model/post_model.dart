class PostModel {
  late final int id;
  late final String title;
  late final double price;
  late final String description;
  late final String category;
  late final String image;

  PostModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];

  }
}

//{id: 1,
// title: "Ravelling - Fold sack No. 1 Backpack, Fits 15 Laptops",
// price: 109.95,
// description: "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
// category: "men's clothing",
// image: "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
// rating: {rate: 3.9, count: 120}
// }

// class PostModel{
// late final int userId;
// late final int id;
// late final String title;
// late final String body;
//
// PostModel({
//   required this.body,
//   required this.id,
//   required this.title,
//   required this.userId,
// });
//
// PostModel.fromJson(Map<String, dynamic>json){
//   userId = json['userId'];
//   id = json['id'];
//   title = json['title'];
//   body = json['body'];
// }
// }
