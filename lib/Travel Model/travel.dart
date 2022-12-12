// To parse required this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.status,
    required this.message,
    required this.data,
  });

  String status;
  String message;
  List<Datum> data;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.gambar,
    required this.lokasi,
    required this.judul,
    required this.diskon,
    required this.duration,
    required this.ratings,
    required this.harga,
    required this.deskripsi,
  });

  String id;
  String gambar;
  String lokasi;
  String judul;
  String diskon;
  String duration;
  String ratings;
  String harga;
  String deskripsi;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        gambar: json["gambar"],
        lokasi: json["lokasi"],
        judul: json["judul"],
        diskon: json["diskon"],
        duration: json["duration"],
        ratings: json["ratings"],
        harga: json["harga"],
        deskripsi: json["deskripsi"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "gambar": gambar,
        "lokasi": lokasi,
        "judul": judul,
        "diskon": diskon,
        "duration": duration,
        "ratings": ratings,
        "harga": harga,
        "deskripsi": deskripsi,
      };
}
