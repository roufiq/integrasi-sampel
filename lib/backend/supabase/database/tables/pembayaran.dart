import '../database.dart';

class PembayaranTable extends SupabaseTable<PembayaranRow> {
  @override
  String get tableName => 'pembayaran';

  @override
  PembayaranRow createRow(Map<String, dynamic> data) => PembayaranRow(data);
}

class PembayaranRow extends SupabaseDataRow {
  PembayaranRow(super.data);

  @override
  SupabaseTable get table => PembayaranTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idKeg => getField<int>('id_keg');
  set idKeg(int? value) => setField<int>('id_keg', value);

  String? get kdSurvei => getField<String>('kd_survei');
  set kdSurvei(String? value) => setField<String>('kd_survei', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
