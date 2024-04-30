import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_mgmt_app/model.dart';

class Services{
  Future<DataModel> getData(context) async {
    late DataModel data;
    try {
      final response = await http.get(
        Uri.parse('https://martmiki.sqaby.com/api/v1/config'),
      );
      if (response.statusCode == 200) {
        final item = json.decode(response.body);
        data = DataModel.fromJson(item);// Mapping json response to our data model
      } else {
        print('Error Occurred');
      }
    } catch (e) {
      print('Error Occurred'+e.toString());
    }
    return data;
  }
}