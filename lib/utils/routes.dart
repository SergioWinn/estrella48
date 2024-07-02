import 'package:flutter/material.dart';
import 'package:estrella48/screens/splash_screen.dart';
import 'package:estrella48/screens/register_screen.dart';
import 'package:estrella48/screens/login_screen.dart';
import 'package:estrella48/screens/home_screen.dart';
import 'package:estrella48/screens/add_product_screen.dart';
import 'package:estrella48/screens/edit_product_screen.dart';
import 'package:estrella48/screens/product_detail_screen.dart';
import 'package:estrella48/models/product.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  AddProductScreen.routeName: (context) => AddProductScreen(),
  EditProductScreen.routeName: (context) => EditProductScreen(
    product: ModalRoute.of(context)!.settings.arguments as Product,
  ),
  ProductDetailScreen.routeName: (context) => ProductDetailScreen(
    product: ModalRoute.of(context)!.settings.arguments as Product,
  ),
};
