void main(List<String> args) {
  Kare kare = Kare(5);
  print("Kare Alan: ${kare.alanHesapla()}");
  print("Kare Çevre: ${kare.cevreHesapla()}");

  Dikdortgen dikdortgen = Dikdortgen(5, 10);
  print("Dikdörtgen Alan: ${dikdortgen.alanHesapla()}");
  print("Dikdörtgen Çevre: ${dikdortgen.cevreHesapla()}");

  Daire daire = Daire(5);
  print("Daire Alan: ${daire.alanHesapla()}");
  print("Daire Çevre: ${daire.cevreHesapla()}");
}

abstract class Sekil {
  double? alanHesapla();
  double? cevreHesapla();

  void Selamla() {
    print("Selam Şekil Sınıfı");
  }
}

class Kare extends Sekil {
  double? _kenar;

  Kare(double kenar) {
    this._kenar = kenar;
  }

  @override
  double? alanHesapla() {
    return _kenar! * _kenar!;
  }

  @override
  double? cevreHesapla() {
    return 4 * _kenar!;
  }
}

class Dikdortgen extends Sekil {
  double? _kenar1;
  double? _kenar2;

  Dikdortgen(double kenar1, double kenar2) {
    this._kenar1 = kenar1;
    this._kenar2 = kenar2;
  }

  @override
  double? alanHesapla() {
    return _kenar1! * _kenar2!;
  }

  @override
  double? cevreHesapla() {
    return 2 * (_kenar1! + _kenar2!);
  }
}

class Daire extends Sekil {
  double? _yariCap;

  Daire(double yariCap) {
    this._yariCap = yariCap;
  }

  @override
  double? alanHesapla() {
    return 3.14 * _yariCap! * _yariCap!;
  }

  @override
  double? cevreHesapla() {
    return 2 * 3.14 * _yariCap!;
  }
}
