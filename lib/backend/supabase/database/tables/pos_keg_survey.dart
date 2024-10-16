import '../database.dart';

class PosKegSurveyTable extends SupabaseTable<PosKegSurveyRow> {
  @override
  String get tableName => 'pos_keg_survey';

  @override
  PosKegSurveyRow createRow(Map<String, dynamic> data) => PosKegSurveyRow(data);
}

class PosKegSurveyRow extends SupabaseDataRow {
  PosKegSurveyRow(super.data);

  @override
  SupabaseTable get table => PosKegSurveyTable();

  String get kdSurvei => getField<String>('kd_survei')!;
  set kdSurvei(String value) => setField<String>('kd_survei', value);

  String get namaSurvei => getField<String>('nama_survei')!;
  set namaSurvei(String value) => setField<String>('nama_survei', value);

  int get idKeg => getField<int>('id_keg')!;
  set idKeg(int value) => setField<int>('id_keg', value);

  String? get namaKeg => getField<String>('nama_keg');
  set namaKeg(String? value) => setField<String>('nama_keg', value);

  int get idPos => getField<int>('id_pos')!;
  set idPos(int value) => setField<int>('id_pos', value);

  String? get namaPos => getField<String>('nama_pos');
  set namaPos(String? value) => setField<String>('nama_pos', value);

  String? get urutan => getField<String>('urutan');
  set urutan(String? value) => setField<String>('urutan', value);

  String? get isViewMitra => getField<String>('is_view_mitra');
  set isViewMitra(String? value) => setField<String>('is_view_mitra', value);
}
