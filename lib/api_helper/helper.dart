import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/api_helper/overview_api.dart';


class APIHelper{
  getDataFromAPI(http.Client client) async{
    http.Response data = await client.get(Uri.parse('https://api.stockedge.com/Api/SecurityDashboardApi/GetCompanyEquityInfoForSecurity/5051?lang=en'));
    return jsonDecode(data.body);
  }
}

class APIPerformanceHelper{
  getDataFromAPI(http.Client client) async{
    http.Response data = await client.get(Uri.parse('https://api.stockedge.com/Api/SecurityDashboardApi/GetTechnicalPerformanceBenchmarkForSecurity/5051?lang=en'));
    return jsonDecode(data.body);
  }
}

