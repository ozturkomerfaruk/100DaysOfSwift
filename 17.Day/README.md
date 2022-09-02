# Day 17

1. Resimlerin geldiğini gördük şimdi onları ekrana taşıma, detay ekleme sayfası yapmada sıra.

İlk başta eklenen bir componentin Kod tarafında bağlantısı kuruluyor. @IBOutlet mantığı

2. Daha sonra, seçilen resmin tutulması için bir String değişken tanımlandı. Şimdi TableViewController da yazacağımız kodlardan sonra ordan gelen path bu string değişkene gelecek

3. storyboard daki, instantiateViewController'a gidip Identifier'ı Detail olanı getir diyoruz. Ancak burada casting yapmamız gerekiyor. 

vc. de ki selectedImage bundan sonra pictures arrayinde ki index'de ki Row oldu.

navigation da sayfayı push ederek animated şeklinde gitmesini yazdık.

<img width="722" alt="image" src="https://user-images.githubusercontent.com/56068905/188095835-6577636b-26ff-4c11-80ce-84ab5da7e2b6.png">

4. Bunu viewController'da kullanmak oldukça basit.

<img width="498" alt="image" src="https://user-images.githubusercontent.com/56068905/188096204-15e6f685-bcd0-4c77-bc62-3379d43181bb.png">

5. Son olarak detay resim sayfasında, resme bir kez tıkladıktan sora AppBar gizlenmesini istiyorsan bu kodları yazmak zorundasın.

<img width="517" alt="image" src="https://user-images.githubusercontent.com/56068905/188103934-efeda7b0-22eb-4827-a73f-f368af62ca10.png">

Aslında burada olay son derece basit, ekran açılırken AppBar'ı gizle ya da göster diyorsun. NavigationController kullanarak yapıyorsun.

6. ViewController ile DetailViewController arasındaki bağı sağlamak için:

<img width="732" alt="image" src="https://user-images.githubusercontent.com/56068905/188104214-37178822-c05e-4d79-b0f8-95f70b2633b5.png">

Detail olana ulaş ve o index deki veriyi al Navigator Push ile gönder.
