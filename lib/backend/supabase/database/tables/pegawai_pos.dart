import '../database.dart';

class PegawaiPosTable extends SupabaseTable<PegawaiPosRow> {
  @override
  String get tableName => 'pegawai_pos';

  @override
  PegawaiPosRow createRow(Map<String, dynamic> data) => PegawaiPosRow(data);
}

class PegawaiPosRow extends SupabaseDataRow {
  PegawaiPosRow(super.data);

  @override
  SupabaseTable get table => PegawaiPosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

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

  String? get assignTo => getField<String>('assign_to');
  set assignTo(String? value) => setField<String>('assign_to', value);

  String? get deskripsi => getField<String>('deskripsi');
  set deskripsi(String? value) => setField<String>('deskripsi', value);
}
