// To parse this JSON data, do
//
//     final restaurantsModel = restaurantsModelFromJson(jsonString);

import 'dart:convert';

List<RestaurantsModel> restaurantsModelFromJson(String str) => List<RestaurantsModel>.from(json.decode(str).map((x) => RestaurantsModel.fromJson(x)));

String restaurantsModelToJson(List<RestaurantsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RestaurantsModel {
    RestaurantsModel({
        required this.id,
        required this.name,
        required this.description,
        required this.collection,
        required this.phoneNumber,
        required this.image,
        required this.menu,
        required this.rating,
    });

    int id;
    String name;
    String description;
    String collection;
    String phoneNumber;
    String image;
    String menu;
    double rating;

    factory RestaurantsModel.fromJson(Map<String, dynamic> json) => RestaurantsModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        collection: json["collection"],
        phoneNumber: json["phone_number"],
        image: json["image"],
        menu: json["menu"],
        rating: json["rating"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "collection": collection,
        "phone_number": phoneNumber,
        "image": image,
        "menu": menu,
        "rating": rating,
    };
}
