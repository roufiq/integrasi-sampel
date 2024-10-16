import '../database.dart';

class PjKegTable extends SupabaseTable<PjKegRow> {
  @override
  String get tableName => 'pj_keg';

  @override
  PjKegRow createRow(Map<String, dynamic> data) => PjKegRow(data);
}

class PjKegRow extends SupabaseDataRow {
  PjKegRow(super.data);

  @override
  SupabaseTable get table => PjKegTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get kdSurvei => getField<String>('kd_survei');
  set kdSurvei(String? value) => setField<String>('kd_survei', value);

  int? get idKeg => getField<int>('id_keg');
  set idKeg(int? value) => setField<int>('id_keg', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
