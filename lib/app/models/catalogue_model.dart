class Catalogue {
  int? id;
  String? name;
  int? price;
  String? image;

  Catalogue({this.id, this.name, this.price, this.image});

  Catalogue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['image'] = image;
    return data;
  }
}
