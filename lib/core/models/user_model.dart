class UserModel {
  static const String userCollectionName = "User";
  String id;
  String email;
  String name;

  UserModel({required this.id, required this.email, required this.name});

  UserModel.fromJson(Map<String, dynamic> Json)
      : this(id: Json["id"], email: Json["email"], name: Json["name"]);

  Map<String, dynamic> toJson() {
    return {"id": id, "email": email, "name": name};
  }
}
