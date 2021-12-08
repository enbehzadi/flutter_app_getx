class product {
  String? productName;
  int? id;
  String? price;
  String? imageUrl;
  bool? off;
  String? description;

  product(
      {this.productName,
        this.id,
        this.price,
        this.imageUrl,
        this.off,
        this.description});

  product.fromJson(Map<String, dynamic> json) {
    productName = json['product_name'];
    id = json['id'];
    price = json['price'];
    imageUrl = json['image_url'];
    off = json['off'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_name'] = this.productName;
    data['id'] = this.id;
    data['price'] = this.price;
    data['image_url'] = this.imageUrl;
    data['off'] = this.off;
    data['description'] = this.description;
    return data;
  }
}
