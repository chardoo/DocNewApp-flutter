import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome(
    this.restaurant,
    this.good,
  );

  List<Restaurant> restaurant;
  List<Good> good;

  factory Welcome.fromJson(Map<String, dynamic> json) {
    return Welcome(
      List<Restaurant>.from(
          json["restaurant"].map((x) => Restaurant.fromJson(x))).toList(),
      List<Good>.from(json["good"].map((x) => Good.fromJson(x))).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        "restaurant": List<dynamic>.from(restaurant.map((x) => x.toJson())),
        "good": List<dynamic>.from(good.map((x) => x.toJson())),
      };
}

class Good {
  Good(
    this.id,
    this.name,
    this.description,
    this.images,
    this.price,
    this.merchantId,
  );

  String id;
  String name;
  String description;
  List<String> images;
  String price;
  String merchantId;

  factory Good.fromJson(Map<String, dynamic> json) {
    return Good(
      json["id"],
      json["name"],
      json["description"],
      List<String>.from(json["Images"].map((x) => x)),
      json["price"],
      json["merchantId"],
    );
  }
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "Images": List<dynamic>.from(images.map((x) => x)),
        "price": price,
        "merchantId": merchantId,
      };
}

class Restaurant {
  Restaurant(
    this.name,
    this.id,
  );

  String name;
  String id;

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      json["name"],
      json["id"],
    );
  }
  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
      };
}
