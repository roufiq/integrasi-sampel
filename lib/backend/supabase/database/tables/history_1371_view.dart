import '../database.dart';

class History1371ViewTable extends SupabaseTable<History1371ViewRow> {
  @override
  String get tableName => 'history_1371_view';

  @override
  History1371ViewRow createRow(Map<String, dynamic> data) =>
      History1371ViewRow(data);
}

class History1371ViewRow extends SupabaseDataRow {
  History1371ViewRow(super.data);

  @override
  SupabaseTable get table => History1371ViewTable();

  int? get idMs => getField<int>('id_ms');
  set idMs(int? value) => setField<int>('id_ms', value);

  String? get kdSurvei => getField<String>('kd_survei');
  set kdSurvei(String? value) => setField<String>('kd_survei', value);

  String? get namaSurvei => getField<String>('nama_survei');
  set namaSurvei(String? value) => setField<String>('nama_survei', value);

  int? get idKeg => getField<int>('id_keg');
  set idKeg(int? value) => setField<int>('id_keg', value);

  String? get namaKeg => getField<String>('nama_keg');
  set namaKeg(String? value) => setField<String>('nama_keg', value);

  int? get idPos => getField<int>('id_pos');
  set idPos(int? value) => setField<int>('id_pos', value);

  String? get namaPos => getField<String>('nama_pos');
  set namaPos(String? value) => setField<String>('nama_pos', value);

  double? get idPosDaftar => getField<double>('id_pos_daftar');
  set idPosDaftar(double? value) => setField<double>('id_pos_daftar', value);

  String? get namaPosDaftar => getField<String>('nama_pos_daftar');
  set namaPosDaftar(String? value) =>
      setField<String>('nama_pos_daftar', value);

  String? get kdProv => getField<String>('kd_prov');
  set kdProv(String? value) => setField<String>('kd_prov', value);

  String? get namaProv => getField<String>('nama_prov');
  set namaProv(String? value) => setField<String>('nama_prov', value);

  String? get kdKab => getField<String>('kd_kab');
  set kdKab(String? value) => setField<String>('kd_kab', value);

  String? get namaKab => getField<String>('nama_kab');
  set namaKab(String? value) => setField<String>('nama_kab', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get namaStatus => getField<String>('nama_status');
  set namaStatus(String? value) => setField<String>('nama_status', value);

  String? get isCocardPublished => getField<String>('is_cocard_published');
  set isCocardPublished(String? value) =>
      setField<String>('is_cocard_published', value);

  String? get kdMitra => getField<String>('kd_mitra');
  set kdMitra(String? value) => setField<String>('kd_mitra', value);

  String? get statusKeg => getField<String>('status_keg');
  set statusKeg(String? value) => setField<String>('status_keg', value);

  String? get statusSurvei => getField<String>('status_survei');
  set statusSurvei(String? value) => setField<String>('status_survei', value);

  int? get idmitra => getField<int>('idmitra');
  set idmitra(int? value) => setField<int>('idmitra', value);

  String? get nilai => getField<String>('nilai');
  set nilai(String? value) => setField<String>('nilai', value);

  String? get ratedBy => getField<String>('rated_by');
  set ratedBy(String? value) => setField<String>('rated_by', value);

  String? get ratedAt => getField<String>('rated_at');
  set ratedAt(String? value) => setField<String>('rated_at', value);

  String? get ratedComment => getField<String>('rated_comment');
  set ratedComment(String? value) => setField<String>('rated_comment', value);

  String? get namaLengkap => getField<String>('nama_lengkap');
  set namaLengkap(String? value) => setField<String>('nama_lengkap', value);

  String? get noTelp => getField<String>('no_telp');
  set noTelp(String? value) => setField<String>('no_telp', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get tglMulai => getField<String>('tgl_mulai');
  set tglMulai(String? value) => setField<String>('tgl_mulai', value);

  String? get tglSelesai => getField<String>('tgl_selesai');
  set tglSelesai(String? value) => setField<String>('tgl_selesai', value);
}
