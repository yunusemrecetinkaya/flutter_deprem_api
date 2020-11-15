import 'dart:convert';
import 'dart:async';
import 'package:deprem_api/models/deprem_model.dart';
import 'package:http/http.dart' as http;

class GetApi {
  var url = 'https://api.orhanaydogdu.com.tr/deprem/live.php?limit=100';
  Future<DepremModel> getApi() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return DepremModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load DepremModel');
    }
  }
}
