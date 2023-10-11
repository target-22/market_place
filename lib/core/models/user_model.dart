class UserModel{
  static String userCollectionName="User";
  String id;
  String name;
  String email;
  UserModel({required this.id, required this.name, required this.email});


  UserModel.fromJson(Map<String,dynamic>Json):
        this(id:Json["id"] ,name:Json["name"] ,email:Json["email"] );

  Map<String,dynamic>toJson(){
    return{
      "id" : id ,
      "name" : name,
      " email" : email
    };
  }

}