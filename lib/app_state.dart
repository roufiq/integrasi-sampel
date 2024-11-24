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
    _safeInit(() {
      _perusahaanStatus =
          prefs.getStringList('ff_perusahaanStatus') ?? _perusahaanStatus;
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

  List<String> _perusahaanStatus = [
    'Aktif',
    'Tutup Sementara',
    'Belum Berproduksi',
    'Alih Usaha',
    'Aktif Nonrespons',
    'Tutup',
    'Tidak Ditemukan',
    'Aktif Pindah',
    'Duplikat',
    'Salah Kode Wilayah',
    'Undefined'
  ];
  List<String> get perusahaanStatus => _perusahaanStatus;
  set perusahaanStatus(List<String> value) {
    _perusahaanStatus = value;
    prefs.setStringList('ff_perusahaanStatus', value);
  }

  void addToPerusahaanStatus(String value) {
    perusahaanStatus.add(value);
    prefs.setStringList('ff_perusahaanStatus', _perusahaanStatus);
  }

  void removeFromPerusahaanStatus(String value) {
    perusahaanStatus.remove(value);
    prefs.setStringList('ff_perusahaanStatus', _perusahaanStatus);
  }

  void removeAtIndexFromPerusahaanStatus(int index) {
    perusahaanStatus.removeAt(index);
    prefs.setStringList('ff_perusahaanStatus', _perusahaanStatus);
  }

  void updatePerusahaanStatusAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    perusahaanStatus[index] = updateFn(_perusahaanStatus[index]);
    prefs.setStringList('ff_perusahaanStatus', _perusahaanStatus);
  }

  void insertAtIndexInPerusahaanStatus(int index, String value) {
    perusahaanStatus.insert(index, value);
    prefs.setStringList('ff_perusahaanStatus', _perusahaanStatus);
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
