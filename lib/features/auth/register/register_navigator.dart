import 'package:market_place/base.dart';
import 'package:market_place/core/models/user_model.dart';

 abstract class RegisterNavigator extends BaseNavigator{
  goToHome(UserModel userModel);
 }