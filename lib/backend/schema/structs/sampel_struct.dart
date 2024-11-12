// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SampelStruct extends BaseStruct {
  SampelStruct({
    int? idsbr,
    String? namaUsaha,
    String? statusPerusahaan,
    String? kodeWilayah,
    String? alamatUsaha,
    String? nmkab,
    String? nmkec,
    String? nmdesa,
  })  : _idsbr = idsbr,
        _namaUsaha = namaUsaha,
        _statusPerusahaan = statusPerusahaan,
        _kodeWilayah = kodeWilayah,
        _alamatUsaha = alamatUsaha,
        _nmkab = nmkab,
        _nmkec = nmkec,
        _nmdesa = nmdesa;

  // "idsbr" field.
  int? _idsbr;
  int get idsbr => _idsbr ?? 0;
  set idsbr(int? val) => _idsbr = val;

  void incrementIdsbr(int amount) => idsbr = idsbr + amount;

  bool hasIdsbr() => _idsbr != null;

  // "nama_usaha" field.
  String? _namaUsaha;
  String get namaUsaha => _namaUsaha ?? '';
  set namaUsaha(String? val) => _namaUsaha = val;

  bool hasNamaUsaha() => _namaUsaha != null;

  // "status_perusahaan" field.
  String? _statusPerusahaan;
  String get statusPerusahaan => _statusPerusahaan ?? '';
  set statusPerusahaan(String? val) => _statusPerusahaan = val;

  bool hasStatusPerusahaan() => _statusPerusahaan != null;

  // "kode_wilayah" field.
  String? _kodeWilayah;
  String get kodeWilayah => _kodeWilayah ?? '';
  set kodeWilayah(String? val) => _kodeWilayah = val;

  bool hasKodeWilayah() => _kodeWilayah != null;

  // "alamat_usaha" field.
  String? _alamatUsaha;
  String get alamatUsaha => _alamatUsaha ?? '';
  set alamatUsaha(String? val) => _alamatUsaha = val;

  bool hasAlamatUsaha() => _alamatUsaha != null;

  // "nmkab" field.
  String? _nmkab;
  String get nmkab => _nmkab ?? '';
  set nmkab(String? val) => _nmkab = val;

  bool hasNmkab() => _nmkab != null;

  // "nmkec" field.
  String? _nmkec;
  String get nmkec => _nmkec ?? '';
  set nmkec(String? val) => _nmkec = val;

  bool hasNmkec() => _nmkec != null;

  // "nmdesa" field.
  String? _nmdesa;
  String get nmdesa => _nmdesa ?? '';
  set nmdesa(String? val) => _nmdesa = val;

  bool hasNmdesa() => _nmdesa != null;

  static SampelStruct fromMap(Map<String, dynamic> data) => SampelStruct(
        idsbr: castToType<int>(data['idsbr']),
        namaUsaha: data['nama_usaha'] as String?,
        statusPerusahaan: data['status_perusahaan'] as String?,
        kodeWilayah: data['kode_wilayah'] as String?,
        alamatUsaha: data['alamat_usaha'] as String?,
        nmkab: data['nmkab'] as String?,
        nmkec: data['nmkec'] as String?,
        nmdesa: data['nmdesa'] as String?,
      );

  static SampelStruct? maybeFromMap(dynamic data) =>
      data is Map ? SampelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idsbr': _idsbr,
        'nama_usaha': _namaUsaha,
        'status_perusahaan': _statusPerusahaan,
        'kode_wilayah': _kodeWilayah,
        'alamat_usaha': _alamatUsaha,
        'nmkab': _nmkab,
        'nmkec': _nmkec,
        'nmdesa': _nmdesa,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idsbr': serializeParam(
          _idsbr,
          ParamType.int,
        ),
        'nama_usaha': serializeParam(
          _namaUsaha,
          ParamType.String,
        ),
        'status_perusahaan': serializeParam(
          _statusPerusahaan,
          ParamType.String,
        ),
        'kode_wilayah': serializeParam(
          _kodeWilayah,
          ParamType.String,
        ),
        'alamat_usaha': serializeParam(
          _alamatUsaha,
          ParamType.String,
        ),
        'nmkab': serializeParam(
          _nmkab,
          ParamType.String,
        ),
        'nmkec': serializeParam(
          _nmkec,
          ParamType.String,
        ),
        'nmdesa': serializeParam(
          _nmdesa,
          ParamType.String,
        ),
      }.withoutNulls;

  static SampelStruct fromSerializableMap(Map<String, dynamic> data) =>
      SampelStruct(
        idsbr: deserializeParam(
          data['idsbr'],
          ParamType.int,
          false,
        ),
        namaUsaha: deserializeParam(
          data['nama_usaha'],
          ParamType.String,
          false,
        ),
        statusPerusahaan: deserializeParam(
          data['status_perusahaan'],
          ParamType.String,
          false,
        ),
        kodeWilayah: deserializeParam(
          data['kode_wilayah'],
          ParamType.String,
          false,
        ),
        alamatUsaha: deserializeParam(
          data['alamat_usaha'],
          ParamType.String,
          false,
        ),
        nmkab: deserializeParam(
          data['nmkab'],
          ParamType.String,
          false,
        ),
        nmkec: deserializeParam(
          data['nmkec'],
          ParamType.String,
          false,
        ),
        nmdesa: deserializeParam(
          data['nmdesa'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SampelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SampelStruct &&
        idsbr == other.idsbr &&
        namaUsaha == other.namaUsaha &&
        statusPerusahaan == other.statusPerusahaan &&
        kodeWilayah == other.kodeWilayah &&
        alamatUsaha == other.alamatUsaha &&
        nmkab == other.nmkab &&
        nmkec == other.nmkec &&
        nmdesa == other.nmdesa;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idsbr,
        namaUsaha,
        statusPerusahaan,
        kodeWilayah,
        alamatUsaha,
        nmkab,
        nmkec,
        nmdesa
      ]);
}

SampelStruct createSampelStruct({
  int? idsbr,
  String? namaUsaha,
  String? statusPerusahaan,
  String? kodeWilayah,
  String? alamatUsaha,
  String? nmkab,
  String? nmkec,
  String? nmdesa,
}) =>
    SampelStruct(
      idsbr: idsbr,
      namaUsaha: namaUsaha,
      statusPerusahaan: statusPerusahaan,
      kodeWilayah: kodeWilayah,
      alamatUsaha: alamatUsaha,
      nmkab: nmkab,
      nmkec: nmkec,
      nmdesa: nmdesa,
    );
