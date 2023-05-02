
import 'dart:convert';

class Json {
  static List<Item>? items;

  //Get Item by ID
  static Item getByID(int id) =>
      items!.firstWhere((element) => element.id == id, orElse: null);

  //Get Item by position
  static Item getByPos(int pos) => items![pos];
}

class Item {
  late final int id;
  late final String description;
  late final String name;
  late final int price;
  late final String images;

  Item({
    required this.id,
    required this.description,
    required this.name,
    required this.price,
    required this.images,
  });

  Item copywith({
    required int id,
    required String description,
    required String name,
    required int prices,
    required String images,
})
  {
    return Item(
      id: id,
      name: name,
      description: description,
      price: price,
      images: images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'images': images,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      images: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, price: $price,images: $images)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Item &&
        o.id == id &&  o.name == name &&  o.description == description &&  o.price == price && o.images == images;
  }

  @override
  int get hashCode {
    return id.hashCode ^  name.hashCode ^  description.hashCode ^  price.hashCode ^  images.hashCode;
  }
  elementAt(int index) {}
}