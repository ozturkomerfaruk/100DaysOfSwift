# 28. Gün

Proje 5'in 2. kısmındayız.

Girilen kelime txt de var mı yok mu kontrol etmek için

<img width="364" alt="image" src="https://user-images.githubusercontent.com/56068905/198130024-5c4a7efc-396e-4f61-a4c6-67f4d91ff038.png">

Tempe ihtiyacımız var çünkü istediğimiz kelime, o kelimenin içerisindeyse o harfleri çıkartıyoruz bir sonraki döngüde kullanabilmemiz için bu tempe ihtiyaç duyduk ve oradan çıkardık.

<img width="582" alt="image" src="https://user-images.githubusercontent.com/56068905/198130088-bca9debe-897c-46a3-aa1d-820509747e9a.png">

Burada UITextChecker adında yeni bir sınıf var. Bu, yazım hatalarını tespit etmek için tasarlanmış bir iOS sınıfıdır ve bu, belirli bir kelimenin gerçek olup olmadığını bilmek için onu mükemmel kılar.

Burada da NSRange adında yeni bir Class var. Bu, bir başlangıç konumu ve bir uzunluk içeren bir değer olan bir dizi aralığını saklamak için kullanılır. Tüm dizgiyi incelemek istiyoruz, bu yüzden başlangıç konumu için 0 ve uzunluk için dizginin uzunluğunu kullanıyoruz.

Ardından, UITextChecker örneğimizin rangeOfMisspelledWord(in:) yöntemini çağırıyoruz. Bu, beş parametre istiyor, ancak yalnızca ilk ikisini ve sonuncusunu önemsiyoruz: ilk parametre bizim dizgemiz, kelime, ikincisi taranacak aralığımız (tüm dizgi) ve sonuncusu kontrol etmemiz gereken dil. ile, burada en İngilizceyi seçer.

rangeOfMisspelledWord(in:) öğesinin çağrılması, yanlış yazımın nerede bulunduğunu bize söyleyen başka bir NSRange yapısını döndürür. Ama bizim umursadığımız şey, herhangi bir yazım yanlışının bulunup bulunmadığıydı ve eğer hiçbir şey bulunmazsa, NSRange'ımız NSNotFound özel konumuna sahip olacak. Genellikle konum size yazım hatasının nerede başladığını söyler, ancak NSNotFound bize sözcüğün doğru yazıldığını söylüyor - yani, bu geçerli bir sözcük.

<img width="812" alt="image" src="https://user-images.githubusercontent.com/56068905/198131791-6c7c380d-b5d8-4702-9d08-dd1e74624053.png">

Not: String ve String.UTF8View, String.UTF16View vb. içindeki sayım farklıdır çünkü hepsi koleksiyon olmalarına rağmen depolama şekilleri farklıdır. Dize onları bir karakter koleksiyonunda saklar, bu nedenle koleksiyondaki her öğe bir karakteri temsil eder. Ancak, diğer kodlamalarda, bu kodlamanın kod birimlerinin bir koleksiyonunda depolanırlar. Bazı özel karakterler (ñ gibi) iki birimde saklanmalıdır. ñ için, UTF8'de 0xC3 0xB1 iken UTF16'da 0x00F1'dir, yani UTF8 kodlamasında UTF16'dan bir öğe daha olduğunu görebilirsiniz. Temel Dize'yi kullanmadığınız sürece, sayım ile karakter sayısını doğru bir şekilde alamazsınız.
