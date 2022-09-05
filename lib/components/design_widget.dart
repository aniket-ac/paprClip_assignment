import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../api_helper/performance_api.dart';

class SingleTile extends StatelessWidget {
  const SingleTile({
    Key? key,
    required this.fieldName,
    required this.fieldValue,
  }) : super(key: key);
  final String fieldName, fieldValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            fieldName,
          ),
          ValueText(),
        ],
      ),
    );
  }

  Widget ValueText() {
    String forIcon = fieldValue;
    if(forIcon.startsWith('B')){
      return Row(
        children: [
          const Icon(Icons.account_balance,size: 15.0,color: Colors.amber,),
          SizedBox(width: 10.0,),
          Text(
            fieldValue,
          ),
        ],
      );
    }else{
      return Text(
        fieldValue,
      );
    }

  }
}

class TripleTile extends StatelessWidget {
  const TripleTile({Key? key, required this.list}) : super(key: key);

  final Performance list;



  @override
  Widget build(BuildContext context) {

    double percent = list.changePercent>100 ? 100: list.changePercent;
    double per = percent<0 ? -percent : percent;
    Color progressColor = percent<0 ? Colors.red : Colors.green;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textDirection: TextDirection.ltr,
        children: [
          Text(
            list.label.toString(),
          ),
          Center(
            child: LinearPercentIndicator(
              width: 150.0,
              lineHeight: 20.0,
              progressColor: progressColor,
              percent: per/100,
            ),
          ),
          Row(
            children: [
              Icon(Icons.arrow_drop_up,color: progressColor,),
              Text(
                '${list.changePercent.toStringAsFixed(2)}%',
                style: TextStyle(color: progressColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

