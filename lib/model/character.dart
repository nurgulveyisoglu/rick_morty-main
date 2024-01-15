class Character {
  int id;
  String name;
  String status;
  String species;
  String type;
  //String origin;
  String image;

  // Character.fromMap(Map<String, dynamic> map)
  //     : id = map["results"]?["id"] ?? "", //map["id"] ?? 0,
  //       name = map["results"]?["name"] ?? "", //map["name"],
  //       status = map["results"]?["status"] ?? "", //map["status"],
  //       species = map["results"]?["species"] ?? "", //map["species"],
  //       type = map["results"]?["type"] ?? "", //map["type"],
  //       origin = map["results"]?["origin"] ?? ""; //map["origin"];

  Character.fromMap(Map<String, dynamic> map)
      : id = map["id"] ?? 0,
        name = map["name"] ?? "",
        status = map["status"] ?? "",
        species = map["species"] ?? "",
        type = map["type"] ?? "",
        image = map["image"] ?? "";
  //origin = map["origin"] ?? "";
}
