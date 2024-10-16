import '../database.dart';

class ProgressPegawaiTable extends SupabaseTable<ProgressPegawaiRow> {
  @override
  String get tableName => 'progress_pegawai';

  @override
  ProgressPegawaiRow createRow(Map<String, dynamic> data) =>
      ProgressPegawaiRow(data);
}

class ProgressPegawaiRow extends SupabaseDataRow {
  ProgressPegawaiRow(super.data);

  @override
  SupabaseTable get table => ProgressPegawaiTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get posPegawaiId => getField<int>('pos_pegawai_id');
  set posPegawaiId(int? value) => setField<int>('pos_pegawai_id', value);

  int? get progress => getField<int>('progress');
  set progress(int? value) => setField<int>('progress', value);
}
