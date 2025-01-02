import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _rating1 = prefs.getDouble('ff_rating1') ?? _rating1;
    });
    _safeInit(() {
      _rating2 = prefs.getDouble('ff_rating2') ?? _rating2;
    });
    _safeInit(() {
      _rating3 = prefs.getDouble('ff_rating3') ?? _rating3;
    });
    _safeInit(() {
      _rating4 = prefs.getDouble('ff_rating4') ?? _rating4;
    });
    _safeInit(() {
      _ratingbb1 = prefs.getDouble('ff_ratingbb1') ?? _ratingbb1;
    });
    _safeInit(() {
      _ratingbb2 = prefs.getDouble('ff_ratingbb2') ?? _ratingbb2;
    });
    _safeInit(() {
      _ratingbb3 = prefs.getDouble('ff_ratingbb3') ?? _ratingbb3;
    });
    _safeInit(() {
      _ratingbb4 = prefs.getDouble('ff_ratingbb4') ?? _ratingbb4;
    });
    _safeInit(() {
      _ratingnw1 = prefs.getDouble('ff_ratingnw1') ?? _ratingnw1;
    });
    _safeInit(() {
      _ratingnw2 = prefs.getDouble('ff_ratingnw2') ?? _ratingnw2;
    });
    _safeInit(() {
      _ratingnw4 = prefs.getDouble('ff_ratingnw4') ?? _ratingnw4;
    });
    _safeInit(() {
      _ratingnw3 = prefs.getDouble('ff_ratingnw3') ?? _ratingnw3;
    });
    _safeInit(() {
      _ratingcn = prefs.getDouble('ff_ratingcn') ?? _ratingcn;
    });
    _safeInit(() {
      _ratingcs = prefs.getDouble('ff_ratingcs') ?? _ratingcs;
    });
    _safeInit(() {
      _ratingdd = prefs.getDouble('ff_ratingdd') ?? _ratingdd;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _rating1 = 0.0;
  double get rating1 => _rating1;
  set rating1(double value) {
    _rating1 = value;
    prefs.setDouble('ff_rating1', value);
  }

  double _rating2 = 0.0;
  double get rating2 => _rating2;
  set rating2(double value) {
    _rating2 = value;
    prefs.setDouble('ff_rating2', value);
  }

  double _rating3 = 0.0;
  double get rating3 => _rating3;
  set rating3(double value) {
    _rating3 = value;
    prefs.setDouble('ff_rating3', value);
  }

  double _rating4 = 0.0;
  double get rating4 => _rating4;
  set rating4(double value) {
    _rating4 = value;
    prefs.setDouble('ff_rating4', value);
  }

  double _ratingbb1 = 0.0;
  double get ratingbb1 => _ratingbb1;
  set ratingbb1(double value) {
    _ratingbb1 = value;
    prefs.setDouble('ff_ratingbb1', value);
  }

  double _ratingbb2 = 0.0;
  double get ratingbb2 => _ratingbb2;
  set ratingbb2(double value) {
    _ratingbb2 = value;
    prefs.setDouble('ff_ratingbb2', value);
  }

  double _ratingbb3 = 0.0;
  double get ratingbb3 => _ratingbb3;
  set ratingbb3(double value) {
    _ratingbb3 = value;
    prefs.setDouble('ff_ratingbb3', value);
  }

  double _ratingbb4 = 0.0;
  double get ratingbb4 => _ratingbb4;
  set ratingbb4(double value) {
    _ratingbb4 = value;
    prefs.setDouble('ff_ratingbb4', value);
  }

  double _ratingnw1 = 0.0;
  double get ratingnw1 => _ratingnw1;
  set ratingnw1(double value) {
    _ratingnw1 = value;
    prefs.setDouble('ff_ratingnw1', value);
  }

  double _ratingnw2 = 0.0;
  double get ratingnw2 => _ratingnw2;
  set ratingnw2(double value) {
    _ratingnw2 = value;
    prefs.setDouble('ff_ratingnw2', value);
  }

  double _ratingnw4 = 0.0;
  double get ratingnw4 => _ratingnw4;
  set ratingnw4(double value) {
    _ratingnw4 = value;
    prefs.setDouble('ff_ratingnw4', value);
  }

  double _ratingnw3 = 0.0;
  double get ratingnw3 => _ratingnw3;
  set ratingnw3(double value) {
    _ratingnw3 = value;
    prefs.setDouble('ff_ratingnw3', value);
  }

  double _ratingcn = 0.0;
  double get ratingcn => _ratingcn;
  set ratingcn(double value) {
    _ratingcn = value;
    prefs.setDouble('ff_ratingcn', value);
  }

  double _ratingcs = 0.0;
  double get ratingcs => _ratingcs;
  set ratingcs(double value) {
    _ratingcs = value;
    prefs.setDouble('ff_ratingcs', value);
  }

  double _ratingdd = 0.0;
  double get ratingdd => _ratingdd;
  set ratingdd(double value) {
    _ratingdd = value;
    prefs.setDouble('ff_ratingdd', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
