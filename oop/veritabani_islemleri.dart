import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = 'admin';
  String _sifre = '123456';

  VeritabaniIslemleri() {}

  VeritabaniIslemleri.login(String kullaniciAdi, String sifre) {
    _kullaniciAdi = kullaniciAdi;
    _sifre = sifre;
  }

  bool baglan() {
    if (_internetVarMi()) {
      if (_kullaniciAdi == 'admin' && _sifre == '123456') {
        print('Veritabanına bağlanıldı.');
        return true;
      } else {
        print('Kullanıcı adı veya şifre hatalı.');
        return false;
      }
    } else {
      return false;
    }
  }

  bool _internetVarMi() {
    if (Random().nextBool()) {
      print('İnternet bağlantısı var.');
      return true;
    } else {
      print('İnternet bağlantısı yok.');
      return false;
    }
  }
}
