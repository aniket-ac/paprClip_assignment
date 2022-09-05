import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bottom_street.dart';
import 'package:untitled/main.dart';
import 'package:http/http.dart' as http;

class OverViewBuilder extends StatelessWidget {
  const OverViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: helper.getDataFromAPI(http.Client()),
      builder: (context , info){
        if(info.hasError){
          debugPrint(info.error.toString());
          return Text('An error has occured');
        }else if(info.hasData){
          return OverViewList(info.data as Map<String,dynamic>);
        }else{
          return Container(
            color: Colors.yellow,
          );
        }
      },
    );
  }
}





