import '../database.dart';

class Profile1371Table extends SupabaseTable<Profile1371Row> {
  @override
  String get tableName => 'profile_1371';

  @override
  Profile1371Row createRow(Map<String, dynamic> data) => Profile1371Row(data);
}

class Profile1371Row extends SupabaseDataRow {
  Profile1371Row(super.data);

  @override
  SupabaseTable get table => Profile1371Table();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  List<String> get roles => getListField<String>('roles');
  set roles(List<String>? value) => setListField<String>('roles', value);
}
