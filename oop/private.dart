import 'veritabani_islemleri.dart';

void main(List<String> args) {
  VeritabaniIslemleri db = VeritabaniIslemleri();

  VeritabaniIslemleri db2 = VeritabaniIslemleri.login('admin', '123456');

  db.baglan();
  db2.baglan();
}
