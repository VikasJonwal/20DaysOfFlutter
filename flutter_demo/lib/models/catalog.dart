class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "Vicky001",
      name: "Apple iPhone 12 Pro (128GB) - Pacific Blue",
      desc:
          "A14 Bionic rockets past every other smartphone chip. The Pro camera system takes low-light photography to the next level.",
      price: 115100,
      color: "#33505a",
      image:
          "https://images-na.ssl-images-amazon.com/images/I/71DVgBTdyLL._SL1500_.jpg")
];
