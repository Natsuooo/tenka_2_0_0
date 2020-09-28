import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tenka_2_0_0/Model/bottom_navigation_model.dart';
import 'package:tenka_2_0_0/Screens/main_bottom_navigation.dart';
import 'package:tenka_2_0_0/Model/data_model.dart';
import 'package:tenka_2_0_0/Model/search_model.dart';
import 'package:tenka_2_0_0/Model/star_model.dart';
import 'package:tenka_2_0_0/Screens/detail_screen.dart';
import 'package:tenka_2_0_0/Model/recent_model.dart';
import 'package:tenka_2_0_0/Model/memo_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationModel>(
          create: (context) => BottomNavigationModel(),
        ),
        ChangeNotifierProvider<DataModel>(
          create: (context) => DataModel(),
        ),
        ChangeNotifierProvider<SearchModel>(
          create: (context) => SearchModel(),
        ),
        ChangeNotifierProvider<StarModel>(
          create: (context) => StarModel(),
        ),
        ChangeNotifierProvider<RecentModel>(
          create: (context) => RecentModel(),
        ),
        ChangeNotifierProvider<MemoModel>(
          create: (context) => MemoModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Tenka',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.grey[50],
          backgroundColor: Colors.grey[500],
        ),
        home: MainBottomNavigation(),
        routes: {
          '/detail': (context) => DetailScreen(),
        },
      ),
    );
  }
}
