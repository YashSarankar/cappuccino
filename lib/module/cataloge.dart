class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 12 pro",
      desc: "Apple iPhone 12 Generation",
      price: 999,
      color: "#33505a",
      image:
      "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-card-40-iphone14pro-202209_FMT_WHH?wid=508&hei=472&fmt=p-jpg&qlt=95&.v=1663611329204",
    )
  ];
}

class Item {
  final int id;
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

 factory Item.fromMap(Map<String,dynamic>map){
return Item(id:map["id"], name:map["name"], desc:map ["desc"], price:map ["price"], color: map["color"], image: map["image"]);
  }

  toMap()=>{
   "id":id,
    "name":name,
    "decs":desc,
    "price":price,
    "color":color,
    "image":image,
  };
}
