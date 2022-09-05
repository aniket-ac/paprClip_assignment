import 'package:untitled/builders/performance_build.dart';

import 'api_helper/helper.dart';
import 'package:flutter/material.dart';
import 'bottom_street.dart';
import 'api_helper/overview_api.dart';
import 'package:http/http.dart' as http;

import 'builders/overview_buld.dart';

late List<OverViewData> overView;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Bottom Street Technical Round';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomStreet(title: _title,),
    );
  }
}

APIHelper helper = APIHelper();
APIPerformanceHelper performanceHelper =APIPerformanceHelper();

class BottomStreet extends StatelessWidget {
  BottomStreet({
    Key? key, required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Text('OverView',style: TextStyle(fontSize: 30.0,)),
            Divider(thickness: 5.0,color: Colors.black,),
            OverViewBuilder(),
            SizedBox(height: 50.0,),
            Text('Performance',style: TextStyle(fontSize: 30.0,)),
            Divider(thickness: 5.0,color: Colors.black,),
            PerformanceBuilder(),
          ],
        ),
      ),
    );
  }
}
