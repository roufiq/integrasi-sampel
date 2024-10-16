import '../database.dart';

class PegawaiTable extends SupabaseTable<PegawaiRow> {
  @override
  String get tableName => 'pegawai';

  @override
  PegawaiRow createRow(Map<String, dynamic> data) => PegawaiRow(data);
}

class PegawaiRow extends SupabaseDataRow {
  PegawaiRow(super.data);

  @override
  SupabaseTable get table => PegawaiTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get niplama => getField<String>('niplama')!;
  set niplama(String value) => setField<String>('niplama', value);

  String? get nipbaru => getField<String>('nipbaru');
  set nipbaru(String? value) => setField<String>('nipbaru', value);

  String? get namagelar => getField<String>('namagelar');
  set namagelar(String? value) => setField<String>('namagelar', value);

  String? get kdgol => getField<String>('kdgol');
  set kdgol(String? value) => setField<String>('kdgol', value);

  String? get nmgol => getField<String>('nmgol');
  set nmgol(String? value) => setField<String>('nmgol', value);

  String? get tmtgol => getField<String>('tmtgol');
  set tmtgol(String? value) => setField<String>('tmtgol', value);

  String? get flagstjab => getField<String>('flagstjab');
  set flagstjab(String? value) => setField<String>('flagstjab', value);

  String? get kdstjab => getField<String>('kdstjab');
  set kdstjab(String? value) => setField<String>('kdstjab', value);

  String? get nmstjab => getField<String>('nmstjab');
  set nmstjab(String? value) => setField<String>('nmstjab', value);

  String? get kdorg => getField<String>('kdorg');
  set kdorg(String? value) => setField<String>('kdorg', value);

  double? get urutreog => getField<double>('urutreog');
  set urutreog(double? value) => setField<double>('urutreog', value);

  String? get nmorg => getField<String>('nmorg');
  set nmorg(String? value) => setField<String>('nmorg', value);

  String? get kdprop => getField<String>('kdprop');
  set kdprop(String? value) => setField<String>('kdprop', value);

  String? get kdkab => getField<String>('kdkab');
  set kdkab(String? value) => setField<String>('kdkab', value);

  String? get kdkec => getField<String>('kdkec');
  set kdkec(String? value) => setField<String>('kdkec', value);

  double? get flagwil => getField<double>('flagwil');
  set flagwil(double? value) => setField<double>('flagwil', value);

  String? get tmtjab => getField<String>('tmtjab');
  set tmtjab(String? value) => setField<String>('tmtjab', value);

  String? get nmpend => getField<String>('nmpend');
  set nmpend(String? value) => setField<String>('nmpend', value);

  String? get tglijazah => getField<String>('tglijazah');
  set tglijazah(String? value) => setField<String>('tglijazah', value);

  String? get jk => getField<String>('jk');
  set jk(String? value) => setField<String>('jk', value);

  String? get tgllahir => getField<String>('tgllahir');
  set tgllahir(String? value) => setField<String>('tgllahir', value);

  String? get tempatlhr => getField<String>('tempatlhr');
  set tempatlhr(String? value) => setField<String>('tempatlhr', value);

  String? get agama => getField<String>('agama');
  set agama(String? value) => setField<String>('agama', value);

  String? get nmwil => getField<String>('nmwil');
  set nmwil(String? value) => setField<String>('nmwil', value);

  String? get nmstpeg => getField<String>('nmstpeg');
  set nmstpeg(String? value) => setField<String>('nmstpeg', value);

  String? get nmjab => getField<String>('nmjab');
  set nmjab(String? value) => setField<String>('nmjab', value);

  String? get tmtcpns => getField<String>('tmtcpns');
  set tmtcpns(String? value) => setField<String>('tmtcpns', value);

  String? get mksthn => getField<String>('mksthn');
  set mksthn(String? value) => setField<String>('mksthn', value);

  String? get mksbln => getField<String>('mksbln');
  set mksbln(String? value) => setField<String>('mksbln', value);

  String? get mktbhthn => getField<String>('mktbhthn');
  set mktbhthn(String? value) => setField<String>('mktbhthn', value);

  String? get mktbhbln => getField<String>('mktbhbln');
  set mktbhbln(String? value) => setField<String>('mktbhbln', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get row => getField<String>('row');
  set row(String? value) => setField<String>('row', value);

  int get statusAktif => getField<int>('status_aktif')!;
  set statusAktif(int value) => setField<int>('status_aktif', value);

  String? get avatar => getField<String>('avatar');
  set avatar(String? value) => setField<String>('avatar', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get noTelp => getField<String>('no_telp');
  set noTelp(String? value) => setField<String>('no_telp', value);
}
