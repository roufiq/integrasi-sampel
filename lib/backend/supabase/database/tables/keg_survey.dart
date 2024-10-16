import '../database.dart';

class KegSurveyTable extends SupabaseTable<KegSurveyRow> {
  @override
  String get tableName => 'keg_survey';

  @override
  KegSurveyRow createRow(Map<String, dynamic> data) => KegSurveyRow(data);
}

class KegSurveyRow extends SupabaseDataRow {
  KegSurveyRow(super.data);

  @override
  SupabaseTable get table => KegSurveyTable();

  int get idKeg => getField<int>('id_keg')!;
  set idKeg(int value) => setField<int>('id_keg', value);

  String get kdSurvei => getField<String>('kd_survei')!;
  set kdSurvei(String value) => setField<String>('kd_survei', value);

  String? get namaSurvei => getField<String>('nama_survei');
  set namaSurvei(String? value) => setField<String>('nama_survei', value);

  String? get namaKeg => getField<String>('nama_keg');
  set namaKeg(String? value) => setField<String>('nama_keg', value);

  String? get statusKeg => getField<String>('status_keg');
  set statusKeg(String? value) => setField<String>('status_keg', value);

  String? get levelKeg => getField<String>('level_keg');
  set levelKeg(String? value) => setField<String>('level_keg', value);

  String? get viewMitra => getField<String>('view_mitra');
  set viewMitra(String? value) => setField<String>('view_mitra', value);

  String? get tglMulai => getField<String>('tgl_mulai');
  set tglMulai(String? value) => setField<String>('tgl_mulai', value);

  String? get tglSelesai => getField<String>('tgl_selesai');
  set tglSelesai(String? value) => setField<String>('tgl_selesai', value);

  double? get jumStruktur => getField<double>('jum_struktur');
  set jumStruktur(double? value) => setField<double>('jum_struktur', value);

  String? get isCocardPublished => getField<String>('is_cocard_published');
  set isCocardPublished(String? value) =>
      setField<String>('is_cocard_published', value);

  String? get tglRekrutmenMulai => getField<String>('tgl_rekrutmen_mulai');
  set tglRekrutmenMulai(String? value) =>
      setField<String>('tgl_rekrutmen_mulai', value);

  String? get tglRektrutmenSelesai =>
      getField<String>('tgl_rektrutmen_selesai');
  set tglRektrutmenSelesai(String? value) =>
      setField<String>('tgl_rektrutmen_selesai', value);

  String? get isAssignStruktur => getField<String>('is_assign_struktur');
  set isAssignStruktur(String? value) =>
      setField<String>('is_assign_struktur', value);

  String? get isAssignWilayah => getField<String>('is_assign_wilayah');
  set isAssignWilayah(String? value) =>
      setField<String>('is_assign_wilayah', value);

  double? get maxPosisiWilayah => getField<double>('max_posisi_wilayah');
  set maxPosisiWilayah(double? value) =>
      setField<double>('max_posisi_wilayah', value);

  DateTime? get realisasiMulai => getField<DateTime>('realisasi_mulai');
  set realisasiMulai(DateTime? value) =>
      setField<DateTime>('realisasi_mulai', value);

  DateTime? get realisasiSelesai => getField<DateTime>('realisasi_selesai');
  set realisasiSelesai(DateTime? value) =>
      setField<DateTime>('realisasi_selesai', value);

  String? get realisasiStatus => getField<String>('realisasi_status');
  set realisasiStatus(String? value) =>
      setField<String>('realisasi_status', value);
}
