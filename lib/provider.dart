import 'package:flutter/material.dart';
import 'package:provider_mgmt_app/data_service.dart';
import 'package:provider_mgmt_app/model.dart';


class DataProvider with ChangeNotifier {
  late DataModel data;

  bool loading = false;
  Services services = Services();

  getPostData(context) async {
    loading = true;
    data = await services.getData(context);
    loading = false;

    notifyListeners();
  }
}