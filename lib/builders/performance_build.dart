import 'package:flutter/material.dart';
import 'package:untitled/bottom_street.dart';
import 'package:untitled/main.dart';
import 'package:http/http.dart' as http;

import '../api_helper/performance_api.dart';

class PerformanceBuilder extends StatelessWidget {
  const PerformanceBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: performanceHelper.getDataFromAPI(http.Client()),
      builder:(context , info){
        if(info.hasError){
          debugPrint(info.error.toString());
          return Text('An error has occured');
        }else if(info.hasData){
          //OverViewData data = OverViewData.fromJson(info.data as Map<String,dynamic>);
          List<Performance> res = [];
          List e = info.data as List;
          e.forEach((element) {
            res.add(Performance.fromJson(element));
          });
          return PerformanceList(res);
          }else{
            return Container(
              color: Colors.yellow,
            );
          }
        },
    );
  }
}
