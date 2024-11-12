import '../database.dart';

class SurveiTable extends SupabaseTable<SurveiRow> {
  @override
  String get tableName => 'survei';

  @override
  SurveiRow createRow(Map<String, dynamic> data) => SurveiRow(data);
}

class SurveiRow extends SupabaseDataRow {
  SurveiRow(super.data);

  @override
  SupabaseTable get table => SurveiTable();

  String get kdSurvei => getField<String>('kd_survei')!;
  set kdSurvei(String value) => setField<String>('kd_survei', value);

  String get nama => getField<String>('nama')!;
  set nama(String value) => setField<String>('nama', value);

  String? get tipe => getField<String>('tipe');
  set tipe(String? value) => setField<String>('tipe', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get isBps => getField<String>('is_bps');
  set isBps(String? value) => setField<String>('is_bps', value);

  bool? get isSampelPerusahaan => getField<bool>('is_sampel_perusahaan');
  set isSampelPerusahaan(bool? value) =>
      setField<bool>('is_sampel_perusahaan', value);
}
