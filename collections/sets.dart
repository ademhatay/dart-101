// Bu dosyada Set yapısını kullanarak örnekler vereceğiz.

/* 
Set yapısı, bir koleksiyon yapısıdır ve her bir elemandan sadece bir tane içerir.
Set yapısı, elemanların sırasını korumaz ve elemanlar arasında bir ilişki yoktur.
*/

void main() {
  // Set oluşturma
  Set<String> isimler = Set<String>();

  // Eleman ekleme
  isimler.add("Ali");
  isimler.add("Veli");
  isimler.add("Ayşe");
  isimler.add("Fatma");

  // Eleman sayısı
  print("Eleman sayısı: ${isimler.length}");

  // Elemanları yazdırma
  print("Elemanlar: ${isimler}");

  // Eleman silme
  isimler.remove("Veli");

  // Eleman sayısı
  print("Eleman sayısı: ${isimler.length}");

  // Elemanları yazdırma
  print("Elemanlar: ${isimler}");
}
