/*
{
  id: "",
  eventName: "",
  imageId: "",
  url: "",
  price: "",
  eventDate: "",
  identification: "",
}
*/

class Good {
  final String id;
  final String name;
  final String description;
  final List<String> Images;
  final int price;
  final String merchantId;

  Good(this.id, this.name, this.description, this.Images, this.price,
      this.merchantId);

  //deserialization
  // factory Good.fromMap(Map<String, dynamic> json) {
  //   return Good(
  //     json["picture"]["id"],
  //     json["picture"]["eventName"],
  //     json["picture"]["imageId"],
  //     json["picture"]["url"],
  //     0,
  //     json["picture"]["eventDate"],
  //     json["picture"]["identification"],
  //   );
  // }

  factory Good.fromMap2(Map<String, dynamic> json) {
    return Good(
      json["id"],
      json["name"],
      json["description"],
      json["Images"],
      int.parse(json["price"]),
      json["merchantId"],
    );
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "Images": Images,
        "price": price,
        "merchantId": merchantId,
      };

  //serialization
  @override
  String toString() {
    return "{ id: $id, name: $name, description: $description, images: $Images"
        "price: $price, merchantId: $merchantId}";
  }
}





