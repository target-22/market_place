import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';

class FireBaeUtiles {
 static CollectionReference<UserModel> getUserCollection() {

    return FirebaseFirestore.instance
        .collection(UserModel.userCollectionName)
        .withConverter<UserModel>(
            fromFirestore: (snapshot, _) =>
                UserModel.fromJson(snapshot.data()!),
            toFirestore: (UserModel, _) => UserModel.toJson());
  }

static  Future<void> addUserToFireStore(UserModel userModel)async {
    await getUserCollection().doc(userModel.id).set(userModel);


  }
  static  Future<UserModel?> getUser(String id)async{
  var userRef= await getUserCollection().doc(id).get();
   return userRef.data();
  }
}
