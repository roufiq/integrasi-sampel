import '../database.dart';

class SampelDetailTable extends SupabaseTable<SampelDetailRow> {
  @override
  String get tableName => 'sampel_detail';

  @override
  SampelDetailRow createRow(Map<String, dynamic> data) => SampelDetailRow(data);
}

class SampelDetailRow extends SupabaseDataRow {
  SampelDetailRow(super.data);

  @override
  SupabaseTable get table => SampelDetailTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get alamat => getField<String>('alamat');
  set alamat(String? value) => setField<String>('alamat', value);

  String? get aset => getField<String>('aset');
  set aset(String? value) => setField<String>('aset', value);

  String? get catatan => getField<String>('catatan');
  set catatan(String? value) => setField<String>('catatan', value);

  String? get jamBuka => getField<String>('jam_buka');
  set jamBuka(String? value) => setField<String>('jam_buka', value);

  String? get jamTutup => getField<String>('jam_tutup');
  set jamTutup(String? value) => setField<String>('jam_tutup', value);

  String? get jenisKelaminPengusaha =>
      getField<String>('jenis_kelamin_pengusaha');
  set jenisKelaminPengusaha(String? value) =>
      setField<String>('jenis_kelamin_pengusaha', value);

  String? get jumlahKamar => getField<String>('jumlah_kamar');
  set jumlahKamar(String? value) => setField<String>('jumlah_kamar', value);

  int? get kode => getField<int>('kode');
  set kode(int? value) => setField<int>('kode', value);

  String? get kodePos => getField<String>('kode_pos');
  set kodePos(String? value) => setField<String>('kode_pos', value);

  String? get kodese => getField<String>('kodese');
  set kodese(String? value) => setField<String>('kodese', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get multiNationalStatus => getField<String>('multi_national_status');
  set multiNationalStatus(String? value) =>
      setField<String>('multi_national_status', value);

  String? get nama => getField<String>('nama');
  set nama(String? value) => setField<String>('nama', value);

  String? get namaKomersial => getField<String>('nama_komersial');
  set namaKomersial(String? value) => setField<String>('nama_komersial', value);

  String? get nomorKodeArea => getField<String>('nomor_kode_area');
  set nomorKodeArea(String? value) =>
      setField<String>('nomor_kode_area', value);

  String? get npwp => getField<String>('npwp');
  set npwp(String? value) => setField<String>('npwp', value);

  String? get pajakTahunPendaftarannpwp =>
      getField<String>('pajak_tahun_pendaftarannpwp');
  set pajakTahunPendaftarannpwp(String? value) =>
      setField<String>('pajak_tahun_pendaftarannpwp', value);

  String? get pajakTahunspt => getField<String>('pajak_tahunspt');
  set pajakTahunspt(String? value) => setField<String>('pajak_tahunspt', value);

  String? get pajakTanggalUpdate => getField<String>('pajak_tanggal_update');
  set pajakTanggalUpdate(String? value) =>
      setField<String>('pajak_tanggal_update', value);

  String? get pendapatanPerTahun => getField<String>('pendapatan_per_tahun');
  set pendapatanPerTahun(String? value) =>
      setField<String>('pendapatan_per_tahun', value);

  String? get pengeluaranPerTahun => getField<String>('pengeluaran_per_tahun');
  set pengeluaranPerTahun(String? value) =>
      setField<String>('pengeluaran_per_tahun', value);

  String? get pengusahaPemilik => getField<String>('pengusaha_pemilik');
  set pengusahaPemilik(String? value) =>
      setField<String>('pengusaha_pemilik', value);

  String? get skalaUsaha => getField<String>('skala_usaha');
  set skalaUsaha(String? value) => setField<String>('skala_usaha', value);

  String? get statusKepemilikan => getField<String>('status_kepemilikan');
  set statusKepemilikan(String? value) =>
      setField<String>('status_kepemilikan', value);

  String? get tahunBeroperasi => getField<String>('tahun_beroperasi');
  set tahunBeroperasi(String? value) =>
      setField<String>('tahun_beroperasi', value);

  String? get tahunPendirian => getField<String>('tahun_pendirian');
  set tahunPendirian(String? value) =>
      setField<String>('tahun_pendirian', value);

  String? get tahunRefAset => getField<String>('tahun_ref_aset');
  set tahunRefAset(String? value) => setField<String>('tahun_ref_aset', value);

  String? get tahunRefKompensasiAsing =>
      getField<String>('tahun_ref_kompensasi_asing');
  set tahunRefKompensasiAsing(String? value) =>
      setField<String>('tahun_ref_kompensasi_asing', value);

  String? get tahunRefKompensasiLokal =>
      getField<String>('tahun_ref_kompensasi_lokal');
  set tahunRefKompensasiLokal(String? value) =>
      setField<String>('tahun_ref_kompensasi_lokal', value);

  String? get tahunRefPendapatan => getField<String>('tahun_ref_pendapatan');
  set tahunRefPendapatan(String? value) =>
      setField<String>('tahun_ref_pendapatan', value);

  String? get tahunRefPengeluaran => getField<String>('tahun_ref_pengeluaran');
  set tahunRefPengeluaran(String? value) =>
      setField<String>('tahun_ref_pengeluaran', value);

  String? get tahunRefSkalaUsaha => getField<String>('tahun_ref_skala_usaha');
  set tahunRefSkalaUsaha(String? value) =>
      setField<String>('tahun_ref_skala_usaha', value);

  String? get tahunRefTenagaKerjaAsing =>
      getField<String>('tahun_ref_tenaga_kerja_asing');
  set tahunRefTenagaKerjaAsing(String? value) =>
      setField<String>('tahun_ref_tenaga_kerja_asing', value);

  String? get tahunRefTenagaKerjaLokal =>
      getField<String>('tahun_ref_tenaga_kerja_lokal');
  set tahunRefTenagaKerjaLokal(String? value) =>
      setField<String>('tahun_ref_tenaga_kerja_lokal', value);

  String? get tanggalLahirPengusaha =>
      getField<String>('tanggal_lahir_pengusaha');
  set tanggalLahirPengusaha(String? value) =>
      setField<String>('tanggal_lahir_pengusaha', value);

  String? get totalKompensasiAsingPerTahun =>
      getField<String>('total_kompensasi_asing_per_tahun');
  set totalKompensasiAsingPerTahun(String? value) =>
      setField<String>('total_kompensasi_asing_per_tahun', value);

  String? get totalKompensasiLokalPerTahun =>
      getField<String>('total_kompensasi_lokal_per_tahun');
  set totalKompensasiLokalPerTahun(String? value) =>
      setField<String>('total_kompensasi_lokal_per_tahun', value);

  String? get totalTenagaKerjaAsingPerTahun =>
      getField<String>('total_tenaga_kerja_asing_per_tahun');
  set totalTenagaKerjaAsingPerTahun(String? value) =>
      setField<String>('total_tenaga_kerja_asing_per_tahun', value);

  String? get totalTenagaKerjaLokalPerTahun =>
      getField<String>('total_tenaga_kerja_lokal_per_tahun');
  set totalTenagaKerjaLokalPerTahun(String? value) =>
      setField<String>('total_tenaga_kerja_lokal_per_tahun', value);

  String? get unitStatistik => getField<String>('unit_statistik');
  set unitStatistik(String? value) => setField<String>('unit_statistik', value);

  String? get blokSensusId => getField<String>('blok_sensus_id');
  set blokSensusId(String? value) => setField<String>('blok_sensus_id', value);

  String? get indukId => getField<String>('induk_id');
  set indukId(String? value) => setField<String>('induk_id', value);

  String? get infrastrukturId => getField<String>('infrastruktur_id');
  set infrastrukturId(String? value) =>
      setField<String>('infrastruktur_id', value);

  String? get jaringanUsahaId => getField<String>('jaringan_usaha_id');
  set jaringanUsahaId(String? value) =>
      setField<String>('jaringan_usaha_id', value);

  String? get jenisBadanHukumBadanUsahaId =>
      getField<String>('jenis_badan_hukum_badan_usaha_id');
  set jenisBadanHukumBadanUsahaId(String? value) =>
      setField<String>('jenis_badan_hukum_badan_usaha_id', value);

  String? get kabupatenKotaId => getField<String>('kabupaten_kota_id');
  set kabupatenKotaId(String? value) =>
      setField<String>('kabupaten_kota_id', value);

  String? get kbjiPengusahaId => getField<String>('kbji_pengusaha_id');
  set kbjiPengusahaId(String? value) =>
      setField<String>('kbji_pengusaha_id', value);

  String? get kecamatanId => getField<String>('kecamatan_id');
  set kecamatanId(String? value) => setField<String>('kecamatan_id', value);

  String? get kelurahanDesaId => getField<String>('kelurahan_desa_id');
  set kelurahanDesaId(String? value) =>
      setField<String>('kelurahan_desa_id', value);

  String? get kewarganegaraanPengusahaId =>
      getField<String>('kewarganegaraan_pengusaha_id');
  set kewarganegaraanPengusahaId(String? value) =>
      setField<String>('kewarganegaraan_pengusaha_id', value);

  String? get metodeEnumerasiPilihanId =>
      getField<String>('metode_enumerasi_pilihan_id');
  set metodeEnumerasiPilihanId(String? value) =>
      setField<String>('metode_enumerasi_pilihan_id', value);

  String? get negaraId => getField<String>('negara_id');
  set negaraId(String? value) => setField<String>('negara_id', value);

  String? get pajakJeniswpId => getField<String>('pajak_jeniswp_id');
  set pajakJeniswpId(String? value) =>
      setField<String>('pajak_jeniswp_id', value);

  String? get pajakSkalaUsahaId => getField<String>('pajak_skala_usaha_id');
  set pajakSkalaUsahaId(String? value) =>
      setField<String>('pajak_skala_usaha_id', value);

  String? get pajakStatuswpId => getField<String>('pajak_statuswp_id');
  set pajakStatuswpId(String? value) =>
      setField<String>('pajak_statuswp_id', value);

  String? get provinsiId => getField<String>('provinsi_id');
  set provinsiId(String? value) => setField<String>('provinsi_id', value);

  String? get sektorInstitusiId => getField<String>('sektor_institusi_id');
  set sektorInstitusiId(String? value) =>
      setField<String>('sektor_institusi_id', value);

  String? get slsId => getField<String>('sls_id');
  set slsId(String? value) => setField<String>('sls_id', value);

  String? get statusbumnId => getField<String>('statusbumn_id');
  set statusbumnId(String? value) => setField<String>('statusbumn_id', value);

  String? get statusPerusahaanId => getField<String>('status_perusahaan_id');
  set statusPerusahaanId(String? value) =>
      setField<String>('status_perusahaan_id', value);

  String? get subjectMatterCustodianId =>
      getField<String>('subject_matter_custodian_id');
  set subjectMatterCustodianId(String? value) =>
      setField<String>('subject_matter_custodian_id', value);

  String? get locked => getField<String>('locked');
  set locked(String? value) => setField<String>('locked', value);

  String? get tempFromSeKeberadaan =>
      getField<String>('temp_from_se_keberadaan');
  set tempFromSeKeberadaan(String? value) =>
      setField<String>('temp_from_se_keberadaan', value);

  String? get tempFromSeStep => getField<String>('temp_from_se_step');
  set tempFromSeStep(String? value) =>
      setField<String>('temp_from_se_step', value);

  String? get tempIdused => getField<String>('temp_idused');
  set tempIdused(String? value) => setField<String>('temp_idused', value);

  String? get tempNomorTelepon => getField<String>('temp_nomor_telepon');
  set tempNomorTelepon(String? value) =>
      setField<String>('temp_nomor_telepon', value);

  String? get tempNomorEkstensi => getField<String>('temp_nomor_ekstensi');
  set tempNomorEkstensi(String? value) =>
      setField<String>('temp_nomor_ekstensi', value);

  String? get tempEmail => getField<String>('temp_email');
  set tempEmail(String? value) => setField<String>('temp_email', value);

  String? get tempWebsite => getField<String>('temp_website');
  set tempWebsite(String? value) => setField<String>('temp_website', value);

  String? get tempAktivitas => getField<String>('temp_aktivitas');
  set tempAktivitas(String? value) => setField<String>('temp_aktivitas', value);

  String? get tempKategoriAktivitas =>
      getField<String>('temp_kategori_aktivitas');
  set tempKategoriAktivitas(String? value) =>
      setField<String>('temp_kategori_aktivitas', value);

  String? get tempKbliAktivitas => getField<String>('temp_kbli_aktivitas');
  set tempKbliAktivitas(String? value) =>
      setField<String>('temp_kbli_aktivitas', value);

  String? get tempProduk => getField<String>('temp_produk');
  set tempProduk(String? value) => setField<String>('temp_produk', value);

  String? get tempOldStatusPerusahaanId =>
      getField<String>('temp_old_status_perusahaan_id');
  set tempOldStatusPerusahaanId(String? value) =>
      setField<String>('temp_old_status_perusahaan_id', value);

  String? get tempSektorInstitusiIdBeforeUpdateByquery20221028 =>
      getField<String>(
          'temp_sektor_institusi_id_before_update_byquery_20221028');
  set tempSektorInstitusiIdBeforeUpdateByquery20221028(String? value) =>
      setField<String>(
          'temp_sektor_institusi_id_before_update_byquery_20221028', value);

  String? get nib => getField<String>('nib');
  set nib(String? value) => setField<String>('nib', value);

  String? get tempKontakperusahaanNama =>
      getField<String>('temp_kontakperusahaan_nama');
  set tempKontakperusahaanNama(String? value) =>
      setField<String>('temp_kontakperusahaan_nama', value);

  String? get tempKontakperusahaanNomortelepon =>
      getField<String>('temp_kontakperusahaan_nomortelepon');
  set tempKontakperusahaanNomortelepon(String? value) =>
      setField<String>('temp_kontakperusahaan_nomortelepon', value);

  String? get tempIdDump => getField<String>('temp_id_dump');
  set tempIdDump(String? value) => setField<String>('temp_id_dump', value);

  String? get tempFromKonstruksiStatusPerusahaan =>
      getField<String>('temp_from_konstruksi_status_perusahaan');
  set tempFromKonstruksiStatusPerusahaan(String? value) =>
      setField<String>('temp_from_konstruksi_status_perusahaan', value);

  String? get tempFromKonstruksiKbli =>
      getField<String>('temp_from_konstruksi_kbli');
  set tempFromKonstruksiKbli(String? value) =>
      setField<String>('temp_from_konstruksi_kbli', value);

  String? get tempFromKonstruksiKategoriKbli =>
      getField<String>('temp_from_konstruksi_kategori_kbli');
  set tempFromKonstruksiKategoriKbli(String? value) =>
      setField<String>('temp_from_konstruksi_kategori_kbli', value);

  String? get tempBeforeUpdateKonstruksiStatusPerusahaan =>
      getField<String>('temp_before_update_konstruksi_status_perusahaan');
  set tempBeforeUpdateKonstruksiStatusPerusahaan(String? value) =>
      setField<String>(
          'temp_before_update_konstruksi_status_perusahaan', value);

  String? get tempBeforeUpdateDirektoriperusahaanawalStatusPerusahaan =>
      getField<String>(
          'temp_before_update_direktoriperusahaanawal_status_perusahaan');
  set tempBeforeUpdateDirektoriperusahaanawalStatusPerusahaan(String? value) =>
      setField<String>(
          'temp_before_update_direktoriperusahaanawal_status_perusahaan',
          value);

  String? get tempSkalaUsaha => getField<String>('temp_skala_usaha');
  set tempSkalaUsaha(String? value) =>
      setField<String>('temp_skala_usaha', value);

  String? get nikPengusaha => getField<String>('nik_pengusaha');
  set nikPengusaha(String? value) => setField<String>('nik_pengusaha', value);

  String? get skalaUsahaCoded => getField<String>('skala_usaha_coded');
  set skalaUsahaCoded(String? value) =>
      setField<String>('skala_usaha_coded', value);

  String? get tempProvinsiId => getField<String>('temp_provinsi_id');
  set tempProvinsiId(String? value) =>
      setField<String>('temp_provinsi_id', value);

  String? get tempKabupatenKotaId => getField<String>('temp_kabupaten_kota_id');
  set tempKabupatenKotaId(String? value) =>
      setField<String>('temp_kabupaten_kota_id', value);

  String? get tempKecamatanId => getField<String>('temp_kecamatan_id');
  set tempKecamatanId(String? value) =>
      setField<String>('temp_kecamatan_id', value);

  String? get tempKelurahanDesaId => getField<String>('temp_kelurahan_desa_id');
  set tempKelurahanDesaId(String? value) =>
      setField<String>('temp_kelurahan_desa_id', value);

  String? get tempBackupProvinsiId =>
      getField<String>('temp_backup_provinsi_id');
  set tempBackupProvinsiId(String? value) =>
      setField<String>('temp_backup_provinsi_id', value);

  String? get tempBackupKabupatenKotaId =>
      getField<String>('temp_backup_kabupaten_kota_id');
  set tempBackupKabupatenKotaId(String? value) =>
      setField<String>('temp_backup_kabupaten_kota_id', value);

  String? get tempBackupKecamatanId =>
      getField<String>('temp_backup_kecamatan_id');
  set tempBackupKecamatanId(String? value) =>
      setField<String>('temp_backup_kecamatan_id', value);

  String? get tempBackupKelurahanDesaId =>
      getField<String>('temp_backup_kelurahan_desa_id');
  set tempBackupKelurahanDesaId(String? value) =>
      setField<String>('temp_backup_kelurahan_desa_id', value);

  String? get kdbs => getField<String>('kdbs');
  set kdbs(String? value) => setField<String>('kdbs', value);

  String? get kdsbs => getField<String>('kdsbs');
  set kdsbs(String? value) => setField<String>('kdsbs', value);

  String? get rt => getField<String>('rt');
  set rt(String? value) => setField<String>('rt', value);

  String? get rw => getField<String>('rw');
  set rw(String? value) => setField<String>('rw', value);

  String? get geolocation => getField<String>('geolocation');
  set geolocation(String? value) => setField<String>('geolocation', value);

  String? get statusPerusahaanIdBackupGc =>
      getField<String>('status_perusahaan_id_backup_gc');
  set statusPerusahaanIdBackupGc(String? value) =>
      setField<String>('status_perusahaan_id_backup_gc', value);

  String? get tempCekKecamatan => getField<String>('temp_cek_kecamatan');
  set tempCekKecamatan(String? value) =>
      setField<String>('temp_cek_kecamatan', value);

  String? get tempCekKabkot => getField<String>('temp_cek_kabkot');
  set tempCekKabkot(String? value) =>
      setField<String>('temp_cek_kabkot', value);

  String? get tempBcKabkot => getField<String>('temp_bc_kabkot');
  set tempBcKabkot(String? value) => setField<String>('temp_bc_kabkot', value);

  String? get tempBcKec => getField<String>('temp_bc_kec');
  set tempBcKec(String? value) => setField<String>('temp_bc_kec', value);

  String? get tempBcProvinsi => getField<String>('temp_bc_provinsi');
  set tempBcProvinsi(String? value) =>
      setField<String>('temp_bc_provinsi', value);

  String? get laporanKeuanganId => getField<String>('laporan_keuangan_id');
  set laporanKeuanganId(String? value) =>
      setField<String>('laporan_keuangan_id', value);

  String? get produksiPerTahun => getField<String>('produksi_per_tahun');
  set produksiPerTahun(String? value) =>
      setField<String>('produksi_per_tahun', value);

  String? get tahunRefProduksi => getField<String>('tahun_ref_produksi');
  set tahunRefProduksi(String? value) =>
      setField<String>('tahun_ref_produksi', value);

  String? get tempProcess => getField<String>('temp_process');
  set tempProcess(String? value) => setField<String>('temp_process', value);

  String? get kip => getField<String>('kip');
  set kip(String? value) => setField<String>('kip', value);

  String? get skuFlagInternet => getField<String>('sku_flag_internet');
  set skuFlagInternet(String? value) =>
      setField<String>('sku_flag_internet', value);

  String? get skuFlagInovasi => getField<String>('sku_flag_inovasi');
  set skuFlagInovasi(String? value) =>
      setField<String>('sku_flag_inovasi', value);

  String? get kdsls => getField<String>('kdsls');
  set kdsls(String? value) => setField<String>('kdsls', value);

  String? get skalaUsahaUpdateCatNull =>
      getField<String>('skala_usaha_update_cat_null');
  set skalaUsahaUpdateCatNull(String? value) =>
      setField<String>('skala_usaha_update_cat_null', value);

  String? get sektorInstitusiSe2016Lanjutan =>
      getField<String>('sektor_institusi_se2016_lanjutan');
  set sektorInstitusiSe2016Lanjutan(String? value) =>
      setField<String>('sektor_institusi_se2016_lanjutan', value);

  String? get idperusahaanSe2016Lanjutan =>
      getField<String>('idperusahaan_se2016_lanjutan');
  set idperusahaanSe2016Lanjutan(String? value) =>
      setField<String>('idperusahaan_se2016_lanjutan', value);

  String? get idseSe2016Lanjutan => getField<String>('idse_se2016_lanjutan');
  set idseSe2016Lanjutan(String? value) =>
      setField<String>('idse_se2016_lanjutan', value);

  String? get idpksSe2016Lanjutan => getField<String>('idpks_se2016_lanjutan');
  set idpksSe2016Lanjutan(String? value) =>
      setField<String>('idpks_se2016_lanjutan', value);

  String? get skalaUsahaUmkmTerbaru =>
      getField<String>('skala_usaha_umkm_terbaru');
  set skalaUsahaUmkmTerbaru(String? value) =>
      setField<String>('skala_usaha_umkm_terbaru', value);

  String? get badanHukumUsahaUdpe2024Temp =>
      getField<String>('badan_hukum_usaha_udpe2024_temp');
  set badanHukumUsahaUdpe2024Temp(String? value) =>
      setField<String>('badan_hukum_usaha_udpe2024_temp', value);

  String? get statusPerusahaanUdpe2024Temp =>
      getField<String>('status_perusahaan_udpe2024_temp');
  set statusPerusahaanUdpe2024Temp(String? value) =>
      setField<String>('status_perusahaan_udpe2024_temp', value);
}
