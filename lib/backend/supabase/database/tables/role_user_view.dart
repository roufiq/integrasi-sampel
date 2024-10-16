import '../database.dart';

class RoleUserViewTable extends SupabaseTable<RoleUserViewRow> {
  @override
  String get tableName => 'role_user_view';

  @override
  RoleUserViewRow createRow(Map<String, dynamic> data) => RoleUserViewRow(data);
}

class RoleUserViewRow extends SupabaseDataRow {
  RoleUserViewRow(super.data);

  @override
  SupabaseTable get table => RoleUserViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get namagelar => getField<String>('namagelar');
  set namagelar(String? value) => setField<String>('namagelar', value);

  List<String> get rolesName => getListField<String>('roles_name');
  set rolesName(List<String>? value) =>
      setListField<String>('roles_name', value);
}
