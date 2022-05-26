class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => _burcAdi;

  get burcTarihi => _burcTarihi;

  get burcDetayi => _burcDetayi;

  get burcKucukResim => _burcKucukResim;

  get burcBuyukResim => _burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);
  @override
  String toString() {
    String bilgi =
        "Burc Adi: $_burcAdi\nBurc Tarihi: $_burcTarihi\nBurc Detayi: $_burcDetayi\nBurc Kresim: $_burcKucukResim\nBurc Bresim: $_burcBuyukResim";

    return bilgi;
  }
}
