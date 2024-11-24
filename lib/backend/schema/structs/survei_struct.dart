// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SurveiStruct extends BaseStruct {
  SurveiStruct({
    String? kdSurvei,
    String? nama,
    String? tipe,
    String? status,
    bool? isSampelPerusahaan,
    bool? isDilaksanakan,
  })  : _kdSurvei = kdSurvei,
        _nama = nama,
        _tipe = tipe,
        _status = status,
        _isSampelPerusahaan = isSampelPerusahaan,
        _isDilaksanakan = isDilaksanakan;

  // "kd_survei" field.
  String? _kdSurvei;
  String get kdSurvei => _kdSurvei ?? '';
  set kdSurvei(String? val) => _kdSurvei = val;

  bool hasKdSurvei() => _kdSurvei != null;

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  set nama(String? val) => _nama = val;

  bool hasNama() => _nama != null;

  // "tipe" field.
  String? _tipe;
  String get tipe => _tipe ?? '';
  set tipe(String? val) => _tipe = val;

  bool hasTipe() => _tipe != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "is_sampel_perusahaan" field.
  bool? _isSampelPerusahaan;
  bool get isSampelPerusahaan => _isSampelPerusahaan ?? false;
  set isSampelPerusahaan(bool? val) => _isSampelPerusahaan = val;

  bool hasIsSampelPerusahaan() => _isSampelPerusahaan != null;

  // "is_dilaksanakan" field.
  bool? _isDilaksanakan;
  bool get isDilaksanakan => _isDilaksanakan ?? false;
  set isDilaksanakan(bool? val) => _isDilaksanakan = val;

  bool hasIsDilaksanakan() => _isDilaksanakan != null;

  static SurveiStruct fromMap(Map<String, dynamic> data) => SurveiStruct(
        kdSurvei: data['kd_survei'] as String?,
        nama: data['nama'] as String?,
        tipe: data['tipe'] as String?,
        status: data['status'] as String?,
        isSampelPerusahaan: data['is_sampel_perusahaan'] as bool?,
        isDilaksanakan: data['is_dilaksanakan'] as bool?,
      );

  static SurveiStruct? maybeFromMap(dynamic data) =>
      data is Map ? SurveiStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'kd_survei': _kdSurvei,
        'nama': _nama,
        'tipe': _tipe,
        'status': _status,
        'is_sampel_perusahaan': _isSampelPerusahaan,
        'is_dilaksanakan': _isDilaksanakan,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'kd_survei': serializeParam(
          _kdSurvei,
          ParamType.String,
        ),
        'nama': serializeParam(
          _nama,
          ParamType.String,
        ),
        'tipe': serializeParam(
          _tipe,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'is_sampel_perusahaan': serializeParam(
          _isSampelPerusahaan,
          ParamType.bool,
        ),
        'is_dilaksanakan': serializeParam(
          _isDilaksanakan,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SurveiStruct fromSerializableMap(Map<String, dynamic> data) =>
      SurveiStruct(
        kdSurvei: deserializeParam(
          data['kd_survei'],
          ParamType.String,
          false,
        ),
        nama: deserializeParam(
          data['nama'],
          ParamType.String,
          false,
        ),
        tipe: deserializeParam(
          data['tipe'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        isSampelPerusahaan: deserializeParam(
          data['is_sampel_perusahaan'],
          ParamType.bool,
          false,
        ),
        isDilaksanakan: deserializeParam(
          data['is_dilaksanakan'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SurveiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SurveiStruct &&
        kdSurvei == other.kdSurvei &&
        nama == other.nama &&
        tipe == other.tipe &&
        status == other.status &&
        isSampelPerusahaan == other.isSampelPerusahaan &&
        isDilaksanakan == other.isDilaksanakan;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([kdSurvei, nama, tipe, status, isSampelPerusahaan, isDilaksanakan]);
}

SurveiStruct createSurveiStruct({
  String? kdSurvei,
  String? nama,
  String? tipe,
  String? status,
  bool? isSampelPerusahaan,
  bool? isDilaksanakan,
}) =>
    SurveiStruct(
      kdSurvei: kdSurvei,
      nama: nama,
      tipe: tipe,
      status: status,
      isSampelPerusahaan: isSampelPerusahaan,
      isDilaksanakan: isDilaksanakan,
    );
