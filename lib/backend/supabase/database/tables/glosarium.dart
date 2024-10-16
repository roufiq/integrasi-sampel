import '../database.dart';

class GlosariumTable extends SupabaseTable<GlosariumRow> {
  @override
  String get tableName => 'glosarium';

  @override
  GlosariumRow createRow(Map<String, dynamic> data) => GlosariumRow(data);
}

class GlosariumRow extends SupabaseDataRow {
  GlosariumRow(super.data);

  @override
  SupabaseTable get table => GlosariumTable();

  String get konten => getField<String>('konten')!;
  set konten(String value) => setField<String>('konten', value);

  String? get jenis => getField<String>('jenis');
  set jenis(String? value) => setField<String>('jenis', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get idSds => getField<String>('idSds');
  set idSds(String? value) => setField<String>('idSds', value);

  String? get judulIndikator => getField<String>('judulIndikator');
  set judulIndikator(String? value) =>
      setField<String>('judulIndikator', value);

  String? get konsep => getField<String>('konsep');
  set konsep(String? value) => setField<String>('konsep', value);

  String? get definisi => getField<String>('definisi');
  set definisi(String? value) => setField<String>('definisi', value);

  String? get namaKlasifikasi => getField<String>('namaKlasifikasi');
  set namaKlasifikasi(String? value) =>
      setField<String>('namaKlasifikasi', value);

  String? get klasifikasi => getField<String>('klasifikasi');
  set klasifikasi(String? value) => setField<String>('klasifikasi', value);

  String? get ukuran => getField<String>('ukuran');
  set ukuran(String? value) => setField<String>('ukuran', value);

  String? get satuan => getField<String>('satuan');
  set satuan(String? value) => setField<String>('satuan', value);

  String? get flagSds => getField<String>('flagSds');
  set flagSds(String? value) => setField<String>('flagSds', value);

  String? get sumberKonten => getField<String>('sumberKonten');
  set sumberKonten(String? value) => setField<String>('sumberKonten', value);

  String? get sumberData => getField<String>('sumberData');
  set sumberData(String? value) => setField<String>('sumberData', value);

  String? get endpoint => getField<String>('endpoint');
  set endpoint(String? value) => setField<String>('endpoint', value);

  String? get flag => getField<String>('flag');
  set flag(String? value) => setField<String>('flag', value);

  String? get syncDate => getField<String>('sync_date');
  set syncDate(String? value) => setField<String>('sync_date', value);
}
