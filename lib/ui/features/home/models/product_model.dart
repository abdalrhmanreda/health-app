class ProductModel {
  String? name;
  int? price;
  String? desc;
  String? image;

  ProductModel({this.name, this.price, this.desc, this.image});

  ProductModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    desc = json['desc'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['price'] = price;
    data['desc'] = desc;
    data['image'] = image;
    return data;
  }
}
