import '../database.dart';

class UserRoleListViewTable extends SupabaseTable<UserRoleListViewRow> {
  @override
  String get tableName => 'user_role_list_view';

  @override
  UserRoleListViewRow createRow(Map<String, dynamic> data) =>
      UserRoleListViewRow(data);
}

class UserRoleListViewRow extends SupabaseDataRow {
  UserRoleListViewRow(super.data);

  @override
  SupabaseTable get table => UserRoleListViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get roleId => getField<int>('role_id');
  set roleId(int? value) => setField<int>('role_id', value);

  int? get pegawaiId => getField<int>('pegawai_id');
  set pegawaiId(int? value) => setField<int>('pegawai_id', value);

  String? get namagelar => getField<String>('namagelar');
  set namagelar(String? value) => setField<String>('namagelar', value);

  String? get avatar => getField<String>('avatar');
  set avatar(String? value) => setField<String>('avatar', value);

  String? get roleName => getField<String>('role_name');
  set roleName(String? value) => setField<String>('role_name', value);
}
