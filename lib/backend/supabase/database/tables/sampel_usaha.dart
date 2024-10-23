import '../database.dart';

class SampelUsahaTable extends SupabaseTable<SampelUsahaRow> {
  @override
  String get tableName => 'sampel_usaha';

  @override
  SampelUsahaRow createRow(Map<String, dynamic> data) => SampelUsahaRow(data);
}

class SampelUsahaRow extends SupabaseDataRow {
  SampelUsahaRow(super.data);

  @override
  SupabaseTable get table => SampelUsahaTable();

  int get idsbr => getField<int>('idsbr')!;
  set idsbr(int value) => setField<int>('idsbr', value);

  String get namaUsaha => getField<String>('nama_usaha')!;
  set namaUsaha(String value) => setField<String>('nama_usaha', value);

  String? get alamatUsaha => getField<String>('alamat_usaha');
  set alamatUsaha(String? value) => setField<String>('alamat_usaha', value);

  String? get kodeWilayah => getField<String>('kode_wilayah');
  set kodeWilayah(String? value) => setField<String>('kode_wilayah', value);

  String? get kdprov => getField<String>('kdprov');
  set kdprov(String? value) => setField<String>('kdprov', value);

  String? get kdkab => getField<String>('kdkab');
  set kdkab(String? value) => setField<String>('kdkab', value);

  String? get kdkec => getField<String>('kdkec');
  set kdkec(String? value) => setField<String>('kdkec', value);

  String? get kddesa => getField<String>('kddesa');
  set kddesa(String? value) => setField<String>('kddesa', value);

  String? get nmprov => getField<String>('nmprov');
  set nmprov(String? value) => setField<String>('nmprov', value);

  String? get nmkab => getField<String>('nmkab');
  set nmkab(String? value) => setField<String>('nmkab', value);

  String? get nmkec => getField<String>('nmkec');
  set nmkec(String? value) => setField<String>('nmkec', value);

  String? get nmdesa => getField<String>('nmdesa');
  set nmdesa(String? value) => setField<String>('nmdesa', value);

  String get perusahaanId => getField<String>('perusahaan_id')!;
  set perusahaanId(String value) => setField<String>('perusahaan_id', value);

  String? get statusPerusahaan => getField<String>('status_perusahaan');
  set statusPerusahaan(String? value) =>
      setField<String>('status_perusahaan', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  String? get skorKalo => getField<String>('skor_kalo');
  set skorKalo(String? value) => setField<String>('skor_kalo', value);
}
