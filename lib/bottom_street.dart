

import 'package:flutter/cupertino.dart';
import 'package:untitled/api_helper/performance_api.dart';

import 'components/design_widget.dart';
import 'main.dart';
import 'api_helper/overview_api.dart';

class OverViewList extends StatefulWidget {
  Map<String, dynamic> data;
  OverViewList(this.data);

  @override
  State<OverViewList> createState() => _OverViewListState();
}

class _OverViewListState extends State<OverViewList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  getChildren(),
    );
  }

  getChildren() {
    List<Widget> res = [];
    widget.data.forEach((key, value) {
      res.add(SingleTile(
        fieldName: key,
        fieldValue: value==null? "-" : value.toString(),
      ));
    });
    return res;
  }
}

class PerformanceList extends StatefulWidget {
  List<Performance> data;
  PerformanceList(this.data);

  @override
  State<PerformanceList> createState() => _PerformanceListState();
}

class _PerformanceListState extends State<PerformanceList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: getTheChild(),
    );
  }

  getTheChild() {
    List<Widget> pqr =[];
    widget.data.forEach((element) {
      pqr.add(TripleTile(list: element));
    });
    return pqr;
  }
}

