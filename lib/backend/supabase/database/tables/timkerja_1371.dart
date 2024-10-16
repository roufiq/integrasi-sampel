import '../database.dart';

class Timkerja1371Table extends SupabaseTable<Timkerja1371Row> {
  @override
  String get tableName => 'timkerja_1371';

  @override
  Timkerja1371Row createRow(Map<String, dynamic> data) => Timkerja1371Row(data);
}

class Timkerja1371Row extends SupabaseDataRow {
  Timkerja1371Row(super.data);

  @override
  SupabaseTable get table => Timkerja1371Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get namatim => getField<String>('namatim');
  set namatim(String? value) => setField<String>('namatim', value);

  int? get leveltim => getField<int>('leveltim');
  set leveltim(int? value) => setField<int>('leveltim', value);

  int? get flagkhusus => getField<int>('flagkhusus');
  set flagkhusus(int? value) => setField<int>('flagkhusus', value);

  String? get pegawaiid => getField<String>('pegawaiid');
  set pegawaiid(String? value) => setField<String>('pegawaiid', value);

  String? get niplama => getField<String>('niplama');
  set niplama(String? value) => setField<String>('niplama', value);

  String? get nipbaru => getField<String>('nipbaru');
  set nipbaru(String? value) => setField<String>('nipbaru', value);

  String? get namaketua => getField<String>('namaketua');
  set namaketua(String? value) => setField<String>('namaketua', value);

  String? get disabledat => getField<String>('disabledat');
  set disabledat(String? value) => setField<String>('disabledat', value);

  int? get jmlproyek => getField<int>('jmlproyek');
  set jmlproyek(int? value) => setField<int>('jmlproyek', value);

  int? get jmlanggotatim => getField<int>('jmlanggotatim');
  set jmlanggotatim(int? value) => setField<int>('jmlanggotatim', value);

  int? get jmlanggota => getField<int>('jmlanggota');
  set jmlanggota(int? value) => setField<int>('jmlanggota', value);
}
