import '../database.dart';

class SampleUsahaHistoryTable extends SupabaseTable<SampleUsahaHistoryRow> {
  @override
  String get tableName => 'sample_usaha_history';

  @override
  SampleUsahaHistoryRow createRow(Map<String, dynamic> data) =>
      SampleUsahaHistoryRow(data);
}

class SampleUsahaHistoryRow extends SupabaseDataRow {
  SampleUsahaHistoryRow(super.data);

  @override
  SupabaseTable get table => SampleUsahaHistoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get alokasiProfilingId => getField<String>('alokasi_profiling_id')!;
  set alokasiProfilingId(String value) =>
      setField<String>('alokasi_profiling_id', value);

  String? get namaUsaha => getField<String>('nama_usaha');
  set namaUsaha(String? value) => setField<String>('nama_usaha', value);

  String? get namaKomersial => getField<String>('nama_komersial');
  set namaKomersial(String? value) => setField<String>('nama_komersial', value);

  String? get provinsiId => getField<String>('provinsi_id');
  set provinsiId(String? value) => setField<String>('provinsi_id', value);

  String? get kabupatenKotaId => getField<String>('kabupaten_kota_id');
  set kabupatenKotaId(String? value) =>
      setField<String>('kabupaten_kota_id', value);

  String? get kecamatanId => getField<String>('kecamatan_id');
  set kecamatanId(String? value) => setField<String>('kecamatan_id', value);

  String? get kelurahanDesaId => getField<String>('kelurahan_desa_id');
  set kelurahanDesaId(String? value) =>
      setField<String>('kelurahan_desa_id', value);

  String? get slsDeskripsi => getField<String>('sls_deskripsi');
  set slsDeskripsi(String? value) => setField<String>('sls_deskripsi', value);

  String? get alamat => getField<String>('alamat');
  set alamat(String? value) => setField<String>('alamat', value);

  String? get kodepos => getField<String>('kodepos');
  set kodepos(String? value) => setField<String>('kodepos', value);

  String? get telp => getField<String>('telp');
  set telp(String? value) => setField<String>('telp', value);

  String? get noWa => getField<String>('no_wa');
  set noWa(String? value) => setField<String>('no_wa', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get kbli => getField<String>('kbli');
  set kbli(String? value) => setField<String>('kbli', value);

  String? get kategori => getField<String>('kategori');
  set kategori(String? value) => setField<String>('kategori', value);

  String? get kegiatanUtama => getField<String>('kegiatan_utama');
  set kegiatanUtama(String? value) => setField<String>('kegiatan_utama', value);

  String? get jaringanUsahaId => getField<String>('jaringan_usaha_id');
  set jaringanUsahaId(String? value) =>
      setField<String>('jaringan_usaha_id', value);

  String? get bentukBadanUsahaId => getField<String>('bentuk_badan_usaha_id');
  set bentukBadanUsahaId(String? value) =>
      setField<String>('bentuk_badan_usaha_id', value);

  String? get deskripsiProdukUsaha =>
      getField<String>('deskripsi_produk_usaha');
  set deskripsiProdukUsaha(String? value) =>
      setField<String>('deskripsi_produk_usaha', value);

  String? get jenisKepemilikanUsaha =>
      getField<String>('jenis_kepemilikan_usaha');
  set jenisKepemilikanUsaha(String? value) =>
      setField<String>('jenis_kepemilikan_usaha', value);

  String? get tahunBerdiri => getField<String>('tahun_berdiri');
  set tahunBerdiri(String? value) => setField<String>('tahun_berdiri', value);

  String? get keteranganSubmitted => getField<String>('keterangan_submitted');
  set keteranganSubmitted(String? value) =>
      setField<String>('keterangan_submitted', value);

  String? get keteranganApproved => getField<String>('keterangan_approved');
  set keteranganApproved(String? value) =>
      setField<String>('keterangan_approved', value);

  String? get keteranganRejected => getField<String>('keterangan_rejected');
  set keteranganRejected(String? value) =>
      setField<String>('keterangan_rejected', value);

  String? get statusPerusahaanId => getField<String>('status_perusahaan_id');
  set statusPerusahaanId(String? value) =>
      setField<String>('status_perusahaan_id', value);

  String? get statusForm => getField<String>('status_form');
  set statusForm(String? value) => setField<String>('status_form', value);

  String? get createdAt => getField<String>('created_at');
  set createdAt(String? value) => setField<String>('created_at', value);

  String? get updatedAt => getField<String>('updated_at');
  set updatedAt(String? value) => setField<String>('updated_at', value);

  String? get sumberProfiling => getField<String>('sumber_profiling');
  set sumberProfiling(String? value) =>
      setField<String>('sumber_profiling', value);

  String? get provinsiPindah => getField<String>('provinsi_pindah');
  set provinsiPindah(String? value) =>
      setField<String>('provinsi_pindah', value);

  String? get kabupatenKotaPindah => getField<String>('kabupaten_kota_pindah');
  set kabupatenKotaPindah(String? value) =>
      setField<String>('kabupaten_kota_pindah', value);

  String? get idsbrMaster => getField<String>('idsbr_master');
  set idsbrMaster(String? value) => setField<String>('idsbr_master', value);

  String? get validator => getField<String>('validator');
  set validator(String? value) => setField<String>('validator', value);

  String? get updatedBy => getField<String>('updated_by');
  set updatedBy(String? value) => setField<String>('updated_by', value);

  String? get provinsiKode => getField<String>('provinsi_kode');
  set provinsiKode(String? value) => setField<String>('provinsi_kode', value);

  String? get provinsiNama => getField<String>('provinsi_nama');
  set provinsiNama(String? value) => setField<String>('provinsi_nama', value);

  String? get kabupatenKotaKode => getField<String>('kabupaten_kota_kode');
  set kabupatenKotaKode(String? value) =>
      setField<String>('kabupaten_kota_kode', value);

  String? get kabupatenKotaNama => getField<String>('kabupaten_kota_nama');
  set kabupatenKotaNama(String? value) =>
      setField<String>('kabupaten_kota_nama', value);

  String? get kecamatanKode => getField<String>('kecamatan_kode');
  set kecamatanKode(String? value) => setField<String>('kecamatan_kode', value);

  String? get kecamatanNama => getField<String>('kecamatan_nama');
  set kecamatanNama(String? value) => setField<String>('kecamatan_nama', value);

  String? get kelurahanDesaKode => getField<String>('kelurahan_desa_kode');
  set kelurahanDesaKode(String? value) =>
      setField<String>('kelurahan_desa_kode', value);

  String? get kelurahanDesaNama => getField<String>('kelurahan_desa_nama');
  set kelurahanDesaNama(String? value) =>
      setField<String>('kelurahan_desa_nama', value);

  String? get perusahaanId => getField<String>('perusahaan_id');
  set perusahaanId(String? value) => setField<String>('perusahaan_id', value);
}
