// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KegSurveyStruct extends BaseStruct {
  KegSurveyStruct({
    int? idKeg,
    String? kdSurvei,
    String? namaSurvei,
    String? namaKeg,
  })  : _idKeg = idKeg,
        _kdSurvei = kdSurvei,
        _namaSurvei = namaSurvei,
        _namaKeg = namaKeg;

  // "id_keg" field.
  int? _idKeg;
  int get idKeg => _idKeg ?? 0;
  set idKeg(int? val) => _idKeg = val;

  void incrementIdKeg(int amount) => idKeg = idKeg + amount;

  bool hasIdKeg() => _idKeg != null;

  // "kd_survei" field.
  String? _kdSurvei;
  String get kdSurvei => _kdSurvei ?? '';
  set kdSurvei(String? val) => _kdSurvei = val;

  bool hasKdSurvei() => _kdSurvei != null;

  // "nama_survei" field.
  String? _namaSurvei;
  String get namaSurvei => _namaSurvei ?? '';
  set namaSurvei(String? val) => _namaSurvei = val;

  bool hasNamaSurvei() => _namaSurvei != null;

  // "nama_keg" field.
  String? _namaKeg;
  String get namaKeg => _namaKeg ?? '';
  set namaKeg(String? val) => _namaKeg = val;

  bool hasNamaKeg() => _namaKeg != null;

  static KegSurveyStruct fromMap(Map<String, dynamic> data) => KegSurveyStruct(
        idKeg: castToType<int>(data['id_keg']),
        kdSurvei: data['kd_survei'] as String?,
        namaSurvei: data['nama_survei'] as String?,
        namaKeg: data['nama_keg'] as String?,
      );

  static KegSurveyStruct? maybeFromMap(dynamic data) => data is Map
      ? KegSurveyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_keg': _idKeg,
        'kd_survei': _kdSurvei,
        'nama_survei': _namaSurvei,
        'nama_keg': _namaKeg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_keg': serializeParam(
          _idKeg,
          ParamType.int,
        ),
        'kd_survei': serializeParam(
          _kdSurvei,
          ParamType.String,
        ),
        'nama_survei': serializeParam(
          _namaSurvei,
          ParamType.String,
        ),
        'nama_keg': serializeParam(
          _namaKeg,
          ParamType.String,
        ),
      }.withoutNulls;

  static KegSurveyStruct fromSerializableMap(Map<String, dynamic> data) =>
      KegSurveyStruct(
        idKeg: deserializeParam(
          data['id_keg'],
          ParamType.int,
          false,
        ),
        kdSurvei: deserializeParam(
          data['kd_survei'],
          ParamType.String,
          false,
        ),
        namaSurvei: deserializeParam(
          data['nama_survei'],
          ParamType.String,
          false,
        ),
        namaKeg: deserializeParam(
          data['nama_keg'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'KegSurveyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is KegSurveyStruct &&
        idKeg == other.idKeg &&
        kdSurvei == other.kdSurvei &&
        namaSurvei == other.namaSurvei &&
        namaKeg == other.namaKeg;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idKeg, kdSurvei, namaSurvei, namaKeg]);
}

KegSurveyStruct createKegSurveyStruct({
  int? idKeg,
  String? kdSurvei,
  String? namaSurvei,
  String? namaKeg,
}) =>
    KegSurveyStruct(
      idKeg: idKeg,
      kdSurvei: kdSurvei,
      namaSurvei: namaSurvei,
      namaKeg: namaKeg,
    );
