import '../database.dart';

class KegSurveyPjKegViewTable extends SupabaseTable<KegSurveyPjKegViewRow> {
  @override
  String get tableName => 'keg_survey_pj_keg_view';

  @override
  KegSurveyPjKegViewRow createRow(Map<String, dynamic> data) =>
      KegSurveyPjKegViewRow(data);
}

class KegSurveyPjKegViewRow extends SupabaseDataRow {
  KegSurveyPjKegViewRow(super.data);

  @override
  SupabaseTable get table => KegSurveyPjKegViewTable();

  String? get kdSurvei => getField<String>('kd_survei');
  set kdSurvei(String? value) => setField<String>('kd_survei', value);

  String? get namaSurvei => getField<String>('nama_survei');
  set namaSurvei(String? value) => setField<String>('nama_survei', value);

  int? get idKeg => getField<int>('id_keg');
  set idKeg(int? value) => setField<int>('id_keg', value);

  String? get namaKeg => getField<String>('nama_keg');
  set namaKeg(String? value) => setField<String>('nama_keg', value);

  String? get tglMulai => getField<String>('tgl_mulai');
  set tglMulai(String? value) => setField<String>('tgl_mulai', value);

  String? get tglSelesai => getField<String>('tgl_selesai');
  set tglSelesai(String? value) => setField<String>('tgl_selesai', value);

  String? get statusKeg => getField<String>('status_keg');
  set statusKeg(String? value) => setField<String>('status_keg', value);

  String? get pjKeg => getField<String>('pj_keg');
  set pjKeg(String? value) => setField<String>('pj_keg', value);

  int? get pegawaiId => getField<int>('pegawai_id');
  set pegawaiId(int? value) => setField<int>('pegawai_id', value);

  String? get namagelar => getField<String>('namagelar');
  set namagelar(String? value) => setField<String>('namagelar', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
