import '../database.dart';

class AssignSampelUsahaTable extends SupabaseTable<AssignSampelUsahaRow> {
  @override
  String get tableName => 'assign_sampel_usaha';

  @override
  AssignSampelUsahaRow createRow(Map<String, dynamic> data) =>
      AssignSampelUsahaRow(data);
}

class AssignSampelUsahaRow extends SupabaseDataRow {
  AssignSampelUsahaRow(super.data);

  @override
  SupabaseTable get table => AssignSampelUsahaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get kdSurvei => getField<String>('kd_survei')!;
  set kdSurvei(String value) => setField<String>('kd_survei', value);

  int? get idKeg => getField<int>('id_keg');
  set idKeg(int? value) => setField<int>('id_keg', value);

  String? get perusahaanId => getField<String>('perusahaan_id');
  set perusahaanId(String? value) => setField<String>('perusahaan_id', value);
}
