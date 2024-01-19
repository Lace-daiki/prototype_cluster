import 'package:flutter/material.dart';

import 'local_business.dart';

class LocalBusinessProvider extends ChangeNotifier {
  List<LocalBusiness> _localBusinesses = [];

  List<LocalBusiness> get localBusinesses => _localBusinesses;

  void addLocalBusiness(LocalBusiness business) {
    _localBusinesses.add(business);
    notifyListeners();
  }

}
