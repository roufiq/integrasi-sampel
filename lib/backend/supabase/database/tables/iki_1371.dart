import '../database.dart';

class Iki1371Table extends SupabaseTable<Iki1371Row> {
  @override
  String get tableName => 'iki_1371';

  @override
  Iki1371Row createRow(Map<String, dynamic> data) => Iki1371Row(data);
}

class Iki1371Row extends SupabaseDataRow {
  Iki1371Row(super.data);

  @override
  SupabaseTable get table => Iki1371Table();

  int get rkproyekid => getField<int>('rkproyekid')!;
  set rkproyekid(int value) => setField<int>('rkproyekid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get periodeid => getField<int>('periodeid');
  set periodeid(int? value) => setField<int>('periodeid', value);

  String? get tahun => getField<String>('tahun');
  set tahun(String? value) => setField<String>('tahun', value);

  String? get wilayahid => getField<String>('wilayahid');
  set wilayahid(String? value) => setField<String>('wilayahid', value);

  String? get kodewilayah => getField<String>('kodewilayah');
  set kodewilayah(String? value) => setField<String>('kodewilayah', value);

  String? get namawilayah => getField<String>('namawilayah');
  set namawilayah(String? value) => setField<String>('namawilayah', value);

  int? get unitkerjaid => getField<int>('unitkerjaid');
  set unitkerjaid(int? value) => setField<int>('unitkerjaid', value);

  String? get kodeunitkerja => getField<String>('kodeunitkerja');
  set kodeunitkerja(String? value) => setField<String>('kodeunitkerja', value);

  String? get namaunitkerja => getField<String>('namaunitkerja');
  set namaunitkerja(String? value) => setField<String>('namaunitkerja', value);

  int? get rkketuaid => getField<int>('rkketuaid');
  set rkketuaid(int? value) => setField<int>('rkketuaid', value);

  String? get rencanakinerjaketua => getField<String>('rencanakinerjaketua');
  set rencanakinerjaketua(String? value) =>
      setField<String>('rencanakinerjaketua', value);

  int? get proyekid => getField<int>('proyekid');
  set proyekid(int? value) => setField<int>('proyekid', value);

  String? get namaproyek => getField<String>('namaproyek');
  set namaproyek(String? value) => setField<String>('namaproyek', value);

  int? get timkerjaid => getField<int>('timkerjaid');
  set timkerjaid(int? value) => setField<int>('timkerjaid', value);

  String? get namatimkerja => getField<String>('namatimkerja');
  set namatimkerja(String? value) => setField<String>('namatimkerja', value);

  int? get pegawaiidketua => getField<int>('pegawaiidketua');
  set pegawaiidketua(int? value) => setField<int>('pegawaiidketua', value);

  String? get niplamaketua => getField<String>('niplamaketua');
  set niplamaketua(String? value) => setField<String>('niplamaketua', value);

  String? get nipbaruketua => getField<String>('nipbaruketua');
  set nipbaruketua(String? value) => setField<String>('nipbaruketua', value);

  String? get namaketua => getField<String>('namaketua');
  set namaketua(String? value) => setField<String>('namaketua', value);

  String? get timkerjaidlevel2 => getField<String>('timkerjaidlevel2');
  set timkerjaidlevel2(String? value) =>
      setField<String>('timkerjaidlevel2', value);

  String? get namatimkerjalevel2 => getField<String>('namatimkerjalevel2');
  set namatimkerjalevel2(String? value) =>
      setField<String>('namatimkerjalevel2', value);

  int? get anggotaid => getField<int>('anggotaid');
  set anggotaid(int? value) => setField<int>('anggotaid', value);

  int? get pegawaiid => getField<int>('pegawaiid');
  set pegawaiid(int? value) => setField<int>('pegawaiid', value);

  String? get niplama => getField<String>('niplama');
  set niplama(String? value) => setField<String>('niplama', value);

  String? get nipbaru => getField<String>('nipbaru');
  set nipbaru(String? value) => setField<String>('nipbaru', value);

  String? get namapegawai => getField<String>('namapegawai');
  set namapegawai(String? value) => setField<String>('namapegawai', value);

  int? get rktimid => getField<int>('rktimid');
  set rktimid(int? value) => setField<int>('rktimid', value);

  String? get rencanakinerja => getField<String>('rencanakinerja');
  set rencanakinerja(String? value) =>
      setField<String>('rencanakinerja', value);
}
