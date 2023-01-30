// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        required this.message,
        required this.token,
        required this.tokenType,
        required this.username,
        required this.id,
        required this.code,
        required this.levKar,
        required this.email,
        required this.password,
    });

    String message;
    String token;
    String tokenType;
    String username;
    int id;
    String code;
    String levKar;
    String email;
    String password;

    factory User.fromJson(Map<String, dynamic> json) => User(
        message: json["message"],
        token: json["token"],
        tokenType: json["token_type"],
        username: json["username"],
        id: json["id"],
        code: json["code"],
        levKar: json["lev_kar"],
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "token": token,
        "token_type": tokenType,
        "username": username,
        "id": id,
        "code": code,
        "lev_kar": levKar,
        "email": email,
        "password": password,
    };
}
