import 'package:market_place/base.dart';
import 'log_in_navigator.dart';

class LogInViewModel extends BaseViewModel<LogInNavigator>{
   onLogInPressed(){
      print("hello");
      navigator!.showLoading();
}
}