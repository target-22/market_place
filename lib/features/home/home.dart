import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_place/base.dart';
import 'package:market_place/features/home/home_navigator.dart';
import 'package:market_place/features/home/home_view_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String routName="Home";
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends BaseView<Home,HomeViewModel>implements HomeNavigator {
  @override
  void initState() {

    super.initState();
    viewModel.navigator=this;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.blue,
    );
  }

  @override
  HomeViewModel initViewModel() {

  return HomeViewModel();
  }
}
