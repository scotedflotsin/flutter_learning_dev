class CatalogModel{
  static  List<Item> items = [];
}


class Item{
  late final String id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;
  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

  factory Item.fromJson(Map<dynamic, dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap()=>{
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image,
  };

}
