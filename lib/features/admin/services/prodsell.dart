// To parse this JSON data, do
//
//     final prodSell = prodSellFromJson(jsonString);

import 'dart:convert';

ProdSell prodSellFromJson(String str) => ProdSell.fromJson(json.decode(str));

String prodSellToJson(ProdSell data) => json.encode(data.toJson());

class ProdSell {
  ProdSell({
    required this.sell,
  });

  final List<Sell> sell;

  factory ProdSell.fromJson(Map<String, dynamic> json) => ProdSell(
        sell: List<Sell>.from(json["sell"].map((x) => Sell.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "sell": List<dynamic>.from(sell.map((x) => x.toJson())),
      };
}

class Sell {
  Sell({
    required this.id,
    required this.productName,
    required this.price,
    required this.description,
    required this.quantity,
    required this.cateogry,
    required this.v,
  });

  final String id;
  final String productName;
  final int price;
  final String description;
  final int quantity;
  final String cateogry;
  final int v;

  factory Sell.fromJson(Map<String, dynamic> json) => Sell(
        id: json["_id"],
        productName: json["productName"],
        price: json["price"],
        description: json["description"],
        quantity: json["quantity"],
        cateogry: json["cateogry"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "productName": productName,
        "price": price,
        "description": description,
        "quantity": quantity,
        "cateogry": cateogry,
        "__v": v,
      };
}
