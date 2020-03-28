import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/user_list_screen.dart';
import './screens/user_data_screen.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color(0xFF303030),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User list',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.white,
        primarySwatch: Colors.indigo,
      ),
      routes: {
        AppRoutes.HOME: (ctx) => UserListScreen(),
        AppRoutes.USER_DATA_SCREEN: (ctx) => UserDataScreen(),
      },
    );
  }
}
