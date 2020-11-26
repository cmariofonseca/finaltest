import 'dart:convert';

CountryEntity countryEntityFromJson(String str) =>
    CountryEntity.fromJson(json.decode(str));

String countryEntityToJson(CountryEntity data) => json.encode(data.toJson());

class CountryEntity {
  CountryEntity({
    this.indicative,
    this.code,
    this.id,
    this.urlImage,
    this.name,
  });

  String indicative;
  String code;
  String id;
  String urlImage;
  String name;

  factory CountryEntity.fromJson(Map<String, dynamic> json) => CountryEntity(
        indicative: json["indicative"],
        code: json["code"],
        id: json["id"],
        urlImage: json["url_image"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "indicative": indicative,
        "code": code,
        "id": id,
        "url_image": urlImage,
        "name": name,
      };
}
