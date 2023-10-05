// Dart'ta, Map veri yapısı, anahtar-değer çiftleri olarak depolanan bir koleksiyondur. // Bu, bir anahtarın bir değere eşleştirildiği bir yapıdır. // Anahtarlar ve değerler herhangi bir veri türü olabilir. // Map veri yapısı, birçok programlama dili tarafından sağlanan sözlük veri yapısına benzer.

// Map veri yapısını oluşturmak için, Map sınıfını kullanabiliriz. // Map sınıfı, anahtar-değer çiftlerini depolamak için kullanılan bir sınıftır. // Map sınıfı, iki tür anahtar-değer çifti depolama yöntemi sunar: HashMap ve LinkedHashMap.

// HashMap, anahtarları rastgele bir sırayla depolar. // LinkedHashMap, anahtarları eklenme sırasına göre depolar.

// Aşağıdaki örnek, bir Map veri yapısı oluşturur ve içine anahtar-değer çiftleri ekler:

// Map<String, int> yaslar = { 'Ali': 25, 'Ayşe': 30, 'Mehmet': 35, };

// Bu Map veri yapısında, anahtarlar String türünde ve değerler int türündedir. // Map veri yapısına erişmek için, anahtarları kullanabiliriz. // Aşağıdaki örnek, 'Ali' anahtarına karşılık gelen değeri yazdırır:

// print(yaslar['Ali']); // 25

// Map veri yapısına yeni bir anahtar-değer çifti eklemek için, aşağıdaki gibi yapabiliriz:

// yaslar['Zeynep'] = 28;

// Map veri yapısından bir anahtar-değer çifti silmek için, aşağıdaki gibi yapabiliriz:

// yaslar.remove('Mehmet');

// Map veri yapısındaki tüm anahtarları almak için, aşağıdaki gibi yapabiliriz:

// var anahtarlar = yaslar.keys;

// Map veri yapısındaki tüm değerleri almak için, aşağıdaki gibi yapabiliriz:

// var degerler = yaslar.values;

// Aşağıdaki örnek, Map veri yapısını kullanarak bir örnek uygulama yapar:

void main() {
  Map<String, String> ogrenciler = {
    '101': 'Ali',
    '102': 'Ayşe',
    '103': 'Mehmet',
  };

  ogrenciler['104'] = 'Zeynep';

  ogrenciler.remove('103');

  for (var ogrenci in ogrenciler.values) {
    print(ogrenci);
  }
}

// Bu örnek, öğrenci numaraları ve isimlerini depolayan bir Map veri yapısı oluşturur. // Daha sonra, yeni bir öğrenci ekler ve bir öğrenciyi siler. // Son olarak, tüm öğrenci isimlerini yazdırır.
