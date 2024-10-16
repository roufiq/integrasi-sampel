import '../database.dart';

class Mitra1371Table extends SupabaseTable<Mitra1371Row> {
  @override
  String get tableName => 'mitra_1371';

  @override
  Mitra1371Row createRow(Map<String, dynamic> data) => Mitra1371Row(data);
}

class Mitra1371Row extends SupabaseDataRow {
  Mitra1371Row(super.data);

  @override
  SupabaseTable get table => Mitra1371Table();

  int get idmitra => getField<int>('idmitra')!;
  set idmitra(int value) => setField<int>('idmitra', value);

  double get nik => getField<double>('nik')!;
  set nik(double value) => setField<double>('nik', value);

  String? get namaLengkap => getField<String>('nama_lengkap');
  set namaLengkap(String? value) => setField<String>('nama_lengkap', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get npwp => getField<String>('npwp');
  set npwp(String? value) => setField<String>('npwp', value);

  String? get alamatDetail => getField<String>('alamat_detail');
  set alamatDetail(String? value) => setField<String>('alamat_detail', value);

  String? get alamatProv => getField<String>('alamat_prov');
  set alamatProv(String? value) => setField<String>('alamat_prov', value);

  String? get alamatKab => getField<String>('alamat_kab');
  set alamatKab(String? value) => setField<String>('alamat_kab', value);

  String? get alamatKec => getField<String>('alamat_kec');
  set alamatKec(String? value) => setField<String>('alamat_kec', value);

  String? get alamatDesa => getField<String>('alamat_desa');
  set alamatDesa(String? value) => setField<String>('alamat_desa', value);

  String? get alamatIs => getField<String>('alamat_is');
  set alamatIs(String? value) => setField<String>('alamat_is', value);

  String? get tglLahir => getField<String>('tgl_lahir');
  set tglLahir(String? value) => setField<String>('tgl_lahir', value);

  String? get jnsKelamin => getField<String>('jns_kelamin');
  set jnsKelamin(String? value) => setField<String>('jns_kelamin', value);

  String? get agama => getField<String>('agama');
  set agama(String? value) => setField<String>('agama', value);

  String? get statusKawin => getField<String>('status_kawin');
  set statusKawin(String? value) => setField<String>('status_kawin', value);

  String? get pendidikan => getField<String>('pendidikan');
  set pendidikan(String? value) => setField<String>('pendidikan', value);

  String? get pekerjaan => getField<String>('pekerjaan');
  set pekerjaan(String? value) => setField<String>('pekerjaan', value);

  String? get descPekerjaanLain => getField<String>('desc_pekerjaan_lain');
  set descPekerjaanLain(String? value) =>
      setField<String>('desc_pekerjaan_lain', value);

  String? get noTelp => getField<String>('no_telp');
  set noTelp(String? value) => setField<String>('no_telp', value);

  String? get isPendataanBps => getField<String>('is_pendataan_bps');
  set isPendataanBps(String? value) =>
      setField<String>('is_pendataan_bps', value);

  String? get isSp => getField<String>('is_sp');
  set isSp(String? value) => setField<String>('is_sp', value);

  String? get isSt => getField<String>('is_st');
  set isSt(String? value) => setField<String>('is_st', value);

  String? get isSe => getField<String>('is_se');
  set isSe(String? value) => setField<String>('is_se', value);

  String? get isSusenas => getField<String>('is_susenas');
  set isSusenas(String? value) => setField<String>('is_susenas', value);

  String? get isSakernas => getField<String>('is_sakernas');
  set isSakernas(String? value) => setField<String>('is_sakernas', value);

  String? get isSbh => getField<String>('is_sbh');
  set isSbh(String? value) => setField<String>('is_sbh', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get fotoKtp => getField<String>('foto_ktp');
  set fotoKtp(String? value) => setField<String>('foto_ktp', value);

  String? get catatan => getField<String>('catatan');
  set catatan(String? value) => setField<String>('catatan', value);

  String? get isAgree => getField<String>('is_agree');
  set isAgree(String? value) => setField<String>('is_agree', value);

  String? get isComplete => getField<String>('is_complete');
  set isComplete(String? value) => setField<String>('is_complete', value);

  double? get sobatId => getField<double>('sobat_id');
  set sobatId(double? value) => setField<double>('sobat_id', value);

  String? get ijazah => getField<String>('ijazah');
  set ijazah(String? value) => setField<String>('ijazah', value);

  String? get isCapi => getField<String>('is_capi');
  set isCapi(String? value) => setField<String>('is_capi', value);

  String? get isMotor => getField<String>('is_motor');
  set isMotor(String? value) => setField<String>('is_motor', value);

  String? get isNaikMotor => getField<String>('is_naik_motor');
  set isNaikMotor(String? value) => setField<String>('is_naik_motor', value);

  String? get isHpAndroid => getField<String>('is_hp_android');
  set isHpAndroid(String? value) => setField<String>('is_hp_android', value);

  String? get isKlLain => getField<String>('is_kl_lain');
  set isKlLain(String? value) => setField<String>('is_kl_lain', value);

  String? get namaKl => getField<String>('nama_kl');
  set namaKl(String? value) => setField<String>('nama_kl', value);

  String? get keteranganKl => getField<String>('keterangan_kl');
  set keteranganKl(String? value) => setField<String>('keterangan_kl', value);

  String? get kdBank => getField<String>('kd_bank');
  set kdBank(String? value) => setField<String>('kd_bank', value);

  String? get rekening => getField<String>('rekening');
  set rekening(String? value) => setField<String>('rekening', value);

  String? get kdProvLahir => getField<String>('kd_prov_lahir');
  set kdProvLahir(String? value) => setField<String>('kd_prov_lahir', value);

  String? get kdKabLahir => getField<String>('kd_kab_lahir');
  set kdKabLahir(String? value) => setField<String>('kd_kab_lahir', value);

  String? get isBisaKomputer => getField<String>('is_bisa_komputer');
  set isBisaKomputer(String? value) =>
      setField<String>('is_bisa_komputer', value);

  String? get isLaptop => getField<String>('is_laptop');
  set isLaptop(String? value) => setField<String>('is_laptop', value);

  String? get merkHp => getField<String>('merk_hp');
  set merkHp(String? value) => setField<String>('merk_hp', value);

  String? get tipeHp => getField<String>('tipe_hp');
  set tipeHp(String? value) => setField<String>('tipe_hp', value);

  String? get lahirLn => getField<String>('lahir_ln');
  set lahirLn(String? value) => setField<String>('lahir_ln', value);

  String? get lahirTempatLn => getField<String>('lahir_tempat_ln');
  set lahirTempatLn(String? value) =>
      setField<String>('lahir_tempat_ln', value);

  String? get rekeningNama => getField<String>('rekening_nama');
  set rekeningNama(String? value) => setField<String>('rekening_nama', value);
}
