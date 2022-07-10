import 'package:amazon_clone/features/auth/services/secrets.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'dart:convert' show json;
import 'package:flutter/services.dart' show rootBundle;

class SecretLoader {
  final String secretPath;

  SecretLoader({
    required this.secretPath,
  });
  Future<Secrets> load() {
    return rootBundle.loadStructuredData<Secrets>(
      secretPath,
      (jsonStr) async {
        final secret = Secrets.fromJson(json.decode(jsonStr));
        return secret;
      },
    );
  }
}

Future<Secrets> secret = SecretLoader(secretPath: "secrets.json").load();

String uri = 'http://$secret:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
}
