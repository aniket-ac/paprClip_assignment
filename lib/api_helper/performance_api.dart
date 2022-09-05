class Performance {
  int? iD;
  String? label;
  String? chartPeriodCode;
  double changePercent =0;

  Performance({this.iD, this.label, this.chartPeriodCode, this.changePercent =0});

  Performance.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    label = json['Label'];
    chartPeriodCode = json['ChartPeriodCode'];
    changePercent = json['ChangePercent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Label'] = this.label;
    data['ChartPeriodCode'] = this.chartPeriodCode;
    data['ChangePercent'] = this.changePercent;
    return data;
  }
}