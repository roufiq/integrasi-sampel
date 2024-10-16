import '../database.dart';

class PegawaiKipapp1371Table extends SupabaseTable<PegawaiKipapp1371Row> {
  @override
  String get tableName => 'pegawai_kipapp_1371';

  @override
  PegawaiKipapp1371Row createRow(Map<String, dynamic> data) =>
      PegawaiKipapp1371Row(data);
}

class PegawaiKipapp1371Row extends SupabaseDataRow {
  PegawaiKipapp1371Row(super.data);

  @override
  SupabaseTable get table => PegawaiKipapp1371Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nipbaru => getField<String>('nipbaru');
  set nipbaru(String? value) => setField<String>('nipbaru', value);

  String? get niplama => getField<String>('niplama');
  set niplama(String? value) => setField<String>('niplama', value);

  String? get nama => getField<String>('nama');
  set nama(String? value) => setField<String>('nama', value);

  DateTime? get tmt => getField<DateTime>('tmt');
  set tmt(DateTime? value) => setField<DateTime>('tmt', value);

  String? get kodeWilayah => getField<String>('kode_wilayah');
  set kodeWilayah(String? value) => setField<String>('kode_wilayah', value);

  String? get noUrutWilayah => getField<String>('no_urut_wilayah');
  set noUrutWilayah(String? value) =>
      setField<String>('no_urut_wilayah', value);

  String? get namawilayah => getField<String>('namawilayah');
  set namawilayah(String? value) => setField<String>('namawilayah', value);

  String? get kodeUK => getField<String>('kodeUK');
  set kodeUK(String? value) => setField<String>('kodeUK', value);

  String? get namaUK => getField<String>('namaUK');
  set namaUK(String? value) => setField<String>('namaUK', value);

  String? get jabatanid => getField<String>('jabatanid');
  set jabatanid(String? value) => setField<String>('jabatanid', value);

  String? get kodeJabatan => getField<String>('kode_jabatan');
  set kodeJabatan(String? value) => setField<String>('kode_jabatan', value);

  String? get namaJabatan => getField<String>('nama_jabatan');
  set namaJabatan(String? value) => setField<String>('nama_jabatan', value);

  int? get jenisJabatan => getField<int>('jenis_jabatan');
  set jenisJabatan(int? value) => setField<int>('jenis_jabatan', value);

  String? get golongan => getField<String>('golongan');
  set golongan(String? value) => setField<String>('golongan', value);

  String? get pangkat => getField<String>('pangkat');
  set pangkat(String? value) => setField<String>('pangkat', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);
}
