class   Character {
  String name;
  String image;
  String id;
  String gender;
  String created;
  String species;
  String status;
  String type;

  Character({
    required this.name,
    required this.image,
    required this.id,
    required this.gender,
    required this.created,
    required this.species,
    required this.status,
    required this.type,
  });

  //  create a character model from our JSON
  static Character characterFromMap({required Map map}) => Character(
      name: map["name"],
      image: map["image"],
      id: map["id"],
      gender: map["gender"],
      created: map["created"],
      species: map["species"],
      status: map["status"],
      type: map["type"]);
}
