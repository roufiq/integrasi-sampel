import '../database.dart';

class PublikasiTable extends SupabaseTable<PublikasiRow> {
  @override
  String get tableName => 'publikasi';

  @override
  PublikasiRow createRow(Map<String, dynamic> data) => PublikasiRow(data);
}

class PublikasiRow extends SupabaseDataRow {
  PublikasiRow(super.data);

  @override
  SupabaseTable get table => PublikasiTable();

  String get pubId => getField<String>('pub_id')!;
  set pubId(String value) => setField<String>('pub_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get abstract => getField<String>('abstract');
  set abstract(String? value) => setField<String>('abstract', value);

  String? get issn => getField<String>('issn');
  set issn(String? value) => setField<String>('issn', value);

  DateTime? get schDate => getField<DateTime>('sch_date');
  set schDate(DateTime? value) => setField<DateTime>('sch_date', value);

  DateTime? get updtDate => getField<DateTime>('updt_date');
  set updtDate(DateTime? value) => setField<DateTime>('updt_date', value);

  String? get cover => getField<String>('cover');
  set cover(String? value) => setField<String>('cover', value);

  String? get pdf => getField<String>('pdf');
  set pdf(String? value) => setField<String>('pdf', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  DateTime? get rlDate => getField<DateTime>('rl_date');
  set rlDate(DateTime? value) => setField<DateTime>('rl_date', value);
}
