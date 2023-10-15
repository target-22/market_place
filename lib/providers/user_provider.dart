
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:market_place/core/models/user_model.dart';

import '../core/firebasee/firebase_utiles.dart';

class UserProvider extends ChangeNotifier{
  UserModel? myUser;
    User? userAuth;

  UserProvider(){
    userAuth=FirebaseAuth.instance.currentUser;
    initUser();
  }

   void initUser()async{
    if(userAuth != null){
     myUser= (await FireBaeUtiles.getUser(userAuth?.uid??""));
   }

}}

