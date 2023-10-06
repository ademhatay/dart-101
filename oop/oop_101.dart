class Araba {
  // Araba sınıfının özellikleri
  late String marka;
  late String model;
  late int yil;
  late double fiyat;

  // Araba sınıfının davranışları
  void calistir() {
    print('$marka $model çalıştı.');
  }

  void durdur() {
    print('$marka $model durdu.');
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
}
