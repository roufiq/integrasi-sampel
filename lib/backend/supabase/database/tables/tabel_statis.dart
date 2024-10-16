import '../database.dart';

class TabelStatisTable extends SupabaseTable<TabelStatisRow> {
  @override
  String get tableName => 'tabel-statis';

  @override
  TabelStatisRow createRow(Map<String, dynamic> data) => TabelStatisRow(data);
}

class TabelStatisRow extends SupabaseDataRow {
  TabelStatisRow(super.data);

  @override
  SupabaseTable get table => TabelStatisTable();

  int get tableId => getField<int>('table_id')!;
  set tableId(int value) => setField<int>('table_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  double? get subjId => getField<double>('subj_id');
  set subjId(double? value) => setField<double>('subj_id', value);

  String? get subj => getField<String>('subj');
  set subj(String? value) => setField<String>('subj', value);

  String? get updtDate => getField<String>('updt_date');
  set updtDate(String? value) => setField<String>('updt_date', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  String? get excel => getField<String>('excel');
  set excel(String? value) => setField<String>('excel', value);
}
