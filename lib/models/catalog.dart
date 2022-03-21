class Item {
  final String id;
  final String name;
  final String des;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.des, required this.price, required this.color, required this.image});
}

final product = [
  Item(
    id: "iphone01", 
    name: "iphone 12 pro", 
    des: "Apple iphone 12th gen", 
    price: 999, 
    color: "#33505a", 
    image: "https://cdn.dxomark.com/wp-content/uploads/medias/post-61183/iphone-12-pro-blue-hero.jpg",
  )
];

    // id: "1", 
    // name: "iphone 12 pro", 
    // des: "Apple iphone 12th gen", 
    // price: 999, 
    // color: "#33505a", 
    // imageUrl: "https://cdn.dxomark.com/wp-content/uploads/medias/post-61183/iphone-12-pro-blue-hero.jpg",