import '../database.dart';

class PegawaiPosByidViewTable extends SupabaseTable<PegawaiPosByidViewRow> {
  @override
  String get tableName => 'pegawai_pos_byid_view';

  @override
  PegawaiPosByidViewRow createRow(Map<String, dynamic> data) =>
      PegawaiPosByidViewRow(data);
}

class PegawaiPosByidViewRow extends SupabaseDataRow {
  PegawaiPosByidViewRow(super.data);

  @override
  SupabaseTable get table => PegawaiPosByidViewTable();

  int? get rowId => getField<int>('row_id');
  set rowId(int? value) => setField<int>('row_id', value);

  String? get kdSurvei => getField<String>('kd_survei');
  set kdSurvei(String? value) => setField<String>('kd_survei', value);

  int? get idKeg => getField<int>('id_keg');
  set idKeg(int? value) => setField<int>('id_keg', value);

  int? get idPos => getField<int>('id_pos');
  set idPos(int? value) => setField<int>('id_pos', value);

  DateTime? get deadline => getField<DateTime>('deadline');
  set deadline(DateTime? value) => setField<DateTime>('deadline', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get individualAssignTo => getField<String>('individual_assign_to');
  set individualAssignTo(String? value) =>
      setField<String>('individual_assign_to', value);

  List<String> get assignToArray => getListField<String>('assign_to_array');
  set assignToArray(List<String>? value) =>
      setListField<String>('assign_to_array', value);

  String? get deskripsi => getField<String>('deskripsi');
  set deskripsi(String? value) => setField<String>('deskripsi', value);

  String? get namaSurvei => getField<String>('nama_survei');
  set namaSurvei(String? value) => setField<String>('nama_survei', value);

  String? get namaKeg => getField<String>('nama_keg');
  set namaKeg(String? value) => setField<String>('nama_keg', value);

  String? get statusKeg => getField<String>('status_keg');
  set statusKeg(String? value) => setField<String>('status_keg', value);

  String? get tglMulai => getField<String>('tgl_mulai');
  set tglMulai(String? value) => setField<String>('tgl_mulai', value);

  String? get tglSelesai => getField<String>('tgl_selesai');
  set tglSelesai(String? value) => setField<String>('tgl_selesai', value);

  String? get namaPos => getField<String>('nama_pos');
  set namaPos(String? value) => setField<String>('nama_pos', value);

  int? get pegawaiId => getField<int>('pegawai_id');
  set pegawaiId(int? value) => setField<int>('pegawai_id', value);

  String? get namagelar => getField<String>('namagelar');
  set namagelar(String? value) => setField<String>('namagelar', value);

  String? get noTelp => getField<String>('no_telp');
  set noTelp(String? value) => setField<String>('no_telp', value);

  String? get avatar => getField<String>('avatar');
  set avatar(String? value) => setField<String>('avatar', value);

  List<String> get avatarArray => getListField<String>('avatar_array');
  set avatarArray(List<String>? value) =>
      setListField<String>('avatar_array', value);
}