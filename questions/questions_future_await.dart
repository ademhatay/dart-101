/**
** Soru
** Bir fonksiyon yazın bu fonksiyon aldıgı id parametresine göre bir kullanıcı getirsin. Bu işlem 2 saniye sonunda sonuclanacaktır ve getirilen kişi bilgisi map olarak alınacaktır. Bu map yapısında username ve id bilgisi olması yeterlidir.
**
** getirilen kişi bilgisindeki username değerini kullanarak kişinin kurslarını getiren bir mfonksiyon yazın. Bu fonksiyon 4 saniye sürecektir ve username değerine ait olan kursları içinde kursun adları olan bir liste olarak döndürecektir.
**
**
** Son olarak da kurslar listesindeki ilk elemanı parametre olarak alan ve bu kursa ait bir yorumu döndüren bir fonksiyon yazın,. Bu fonksiyon 1 saniye sürecektir.
*/

void main(List<String> args) {
  print('main başladı');
  idyeGoreUserGetir(1).then((user) {
    print('user getirildi');
    print(user);
    usernameyeGoreKurslariGetir(user['username']).then((kurslar) {
      print('kurslar getirildi');
      print(kurslar);
      kursaGoreYorumlariGetir(kurslar[0]).then((yorum) {
        print('yorum getirildi');
        print(yorum);
      });
    });
  });
  print('main bitti');
}

idyeGoreUserGetir(int id) async {
  print('idyeGoreUserGetir çalıştı');
  await Future.delayed(Duration(seconds: 2));
  return {'username': 'user1', 'id': id};
}

usernameyeGoreKurslariGetir(String username) async {
  print('usernameyeGoreKurslariGetir çalıştı');
  await Future.delayed(Duration(seconds: 4));
  return ['kurs1', 'kurs2', 'kurs3'];
}

kursaGoreYorumlariGetir(String kurs) async {
  print('kursaGoreYorumlariGetir çalıştı');
  await Future.delayed(Duration(seconds: 1));
  return 'yorum';
}
