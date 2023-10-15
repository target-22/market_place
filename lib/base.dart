
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:market_place/core/style/app_color.dart';

abstract class BaseView<T extends StatefulWidget,Vm extends BaseViewModel>extends State<T> implements BaseNavigator {

 late Vm viewModel;
 Vm initViewModel();
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel=initViewModel();

  }
 @override
 void hideDialog() {
   Navigator.pop(context);
 }

 @override
 void showLoading({String message="  Loading..."}) {
   showDialog(
     context: context,
     builder: (context) => AlertDialog(
       title: Center(
         child: Row(children: [CircularProgressIndicator(color: AppColor.red), Text(message)]),
       ),
     ),
   );
 }

 @override
 void showMessage(String message) {
   Fluttertoast.showToast(
       msg: message,
       toastLength: Toast.LENGTH_SHORT,
       gravity: ToastGravity.CENTER,
       timeInSecForIosWeb: 1,
       backgroundColor: Colors.red,
       textColor: Colors.white,
       fontSize: 16.0
   );
 }


}



 abstract class BaseViewModel<T extends BaseNavigator > extends ChangeNotifier{
   T? navigator=null ;
}

abstract class BaseNavigator{
  void showLoading({String message});

  void showMessage(String message);

  void hideDialog();

}