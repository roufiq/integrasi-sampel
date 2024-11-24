// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PegawaiStruct extends BaseStruct {
  PegawaiStruct({
    String? email,
    String? niplama,
    String? namagelar,
    String? nipbaru,
    String? nmgol,
    String? nmstjab,
    String? nmjab,
    String? avatar,
    String? userId,
  })  : _email = email,
        _niplama = niplama,
        _namagelar = namagelar,
        _nipbaru = nipbaru,
        _nmgol = nmgol,
        _nmstjab = nmstjab,
        _nmjab = nmjab,
        _avatar = avatar,
        _userId = userId;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "niplama" field.
  String? _niplama;
  String get niplama => _niplama ?? '';
  set niplama(String? val) => _niplama = val;

  bool hasNiplama() => _niplama != null;

  // "namagelar" field.
  String? _namagelar;
  String get namagelar => _namagelar ?? '';
  set namagelar(String? val) => _namagelar = val;

  bool hasNamagelar() => _namagelar != null;

  // "nipbaru" field.
  String? _nipbaru;
  String get nipbaru => _nipbaru ?? '';
  set nipbaru(String? val) => _nipbaru = val;

  bool hasNipbaru() => _nipbaru != null;

  // "nmgol" field.
  String? _nmgol;
  String get nmgol => _nmgol ?? '';
  set nmgol(String? val) => _nmgol = val;

  bool hasNmgol() => _nmgol != null;

  // "nmstjab" field.
  String? _nmstjab;
  String get nmstjab => _nmstjab ?? '';
  set nmstjab(String? val) => _nmstjab = val;

  bool hasNmstjab() => _nmstjab != null;

  // "nmjab" field.
  String? _nmjab;
  String get nmjab => _nmjab ?? '';
  set nmjab(String? val) => _nmjab = val;

  bool hasNmjab() => _nmjab != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;

  bool hasAvatar() => _avatar != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  static PegawaiStruct fromMap(Map<String, dynamic> data) => PegawaiStruct(
        email: data['email'] as String?,
        niplama: data['niplama'] as String?,
        namagelar: data['namagelar'] as String?,
        nipbaru: data['nipbaru'] as String?,
        nmgol: data['nmgol'] as String?,
        nmstjab: data['nmstjab'] as String?,
        nmjab: data['nmjab'] as String?,
        avatar: data['avatar'] as String?,
        userId: data['user_id'] as String?,
      );

  static PegawaiStruct? maybeFromMap(dynamic data) =>
      data is Map ? PegawaiStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'niplama': _niplama,
        'namagelar': _namagelar,
        'nipbaru': _nipbaru,
        'nmgol': _nmgol,
        'nmstjab': _nmstjab,
        'nmjab': _nmjab,
        'avatar': _avatar,
        'user_id': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'niplama': serializeParam(
          _niplama,
          ParamType.String,
        ),
        'namagelar': serializeParam(
          _namagelar,
          ParamType.String,
        ),
        'nipbaru': serializeParam(
          _nipbaru,
          ParamType.String,
        ),
        'nmgol': serializeParam(
          _nmgol,
          ParamType.String,
        ),
        'nmstjab': serializeParam(
          _nmstjab,
          ParamType.String,
        ),
        'nmjab': serializeParam(
          _nmjab,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
      }.withoutNulls;

  static PegawaiStruct fromSerializableMap(Map<String, dynamic> data) =>
      PegawaiStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        niplama: deserializeParam(
          data['niplama'],
          ParamType.String,
          false,
        ),
        namagelar: deserializeParam(
          data['namagelar'],
          ParamType.String,
          false,
        ),
        nipbaru: deserializeParam(
          data['nipbaru'],
          ParamType.String,
          false,
        ),
        nmgol: deserializeParam(
          data['nmgol'],
          ParamType.String,
          false,
        ),
        nmstjab: deserializeParam(
          data['nmstjab'],
          ParamType.String,
          false,
        ),
        nmjab: deserializeParam(
          data['nmjab'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PegawaiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PegawaiStruct &&
        email == other.email &&
        niplama == other.niplama &&
        namagelar == other.namagelar &&
        nipbaru == other.nipbaru &&
        nmgol == other.nmgol &&
        nmstjab == other.nmstjab &&
        nmjab == other.nmjab &&
        avatar == other.avatar &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        email,
        niplama,
        namagelar,
        nipbaru,
        nmgol,
        nmstjab,
        nmjab,
        avatar,
        userId
      ]);
}

PegawaiStruct createPegawaiStruct({
  String? email,
  String? niplama,
  String? namagelar,
  String? nipbaru,
  String? nmgol,
  String? nmstjab,
  String? nmjab,
  String? avatar,
  String? userId,
}) =>
    PegawaiStruct(
      email: email,
      niplama: niplama,
      namagelar: namagelar,
      nipbaru: nipbaru,
      nmgol: nmgol,
      nmstjab: nmstjab,
      nmjab: nmjab,
      avatar: avatar,
      userId: userId,
    );
