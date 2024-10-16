import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _isAdminRole = prefs.getBool('ff_isAdminRole') ?? _isAdminRole;
    });
    _safeInit(() {
      _isKetuaTimRole = prefs.getBool('ff_isKetuaTimRole') ?? _isKetuaTimRole;
    });
    _safeInit(() {
      _isKepalaRole = prefs.getBool('ff_isKepalaRole') ?? _isKepalaRole;
    });
    _safeInit(() {
      _isAnggotaRole = prefs.getBool('ff_isAnggotaRole') ?? _isAnggotaRole;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isAdminRole = false;
  bool get isAdminRole => _isAdminRole;
  set isAdminRole(bool value) {
    _isAdminRole = value;
    prefs.setBool('ff_isAdminRole', value);
  }

  bool _isKetuaTimRole = false;
  bool get isKetuaTimRole => _isKetuaTimRole;
  set isKetuaTimRole(bool value) {
    _isKetuaTimRole = value;
    prefs.setBool('ff_isKetuaTimRole', value);
  }

  bool _isKepalaRole = false;
  bool get isKepalaRole => _isKepalaRole;
  set isKepalaRole(bool value) {
    _isKepalaRole = value;
    prefs.setBool('ff_isKepalaRole', value);
  }

  bool _isAnggotaRole = false;
  bool get isAnggotaRole => _isAnggotaRole;
  set isAnggotaRole(bool value) {
    _isAnggotaRole = value;
    prefs.setBool('ff_isAnggotaRole', value);
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
