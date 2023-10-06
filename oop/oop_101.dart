class Araba {
  // Araba sınıfının özellikleri
  String? marka;
  String? model;
  int? yil;
  double fiyat = 1000;

  // Araba sınıfının davranışları
  void calistir() {
    print('$marka $model çalıştı.');
  }

  void durdur() {
    print('$marka $model durdu.');
  }

  void bilgiGoster() {
    print('Marka: $marka');
    print('Model: $model');
    print('Yıl: $yil');
    print('Fiyat: $fiyat');
  }
}

void main(List<String> args) {
  // Araba nesnesi oluşturma
  var araba = Araba();

  // Araba özelliklerini ayarlama
  araba.marka = 'Toyota';
  araba.model = 'Corolla';
  araba.yil = 2021;
  araba.fiyat = 200000;

  // Arabayı çalıştırma
  araba.calistir();

  // Arabayı durdurma
  araba.durdur();

  // Araba bilgilerini gösterme
  araba.bilgiGoster();
}
