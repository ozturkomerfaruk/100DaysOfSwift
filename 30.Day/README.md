# 30. Gün

Sağdaki menü de attribute inspector pencerisinde bulunan Relation bölümünü Equal and Constant yap diyor ve layaoute göre ayarla diyor boyutunu mesela 207 gibi.

Ancak ben bulamadım bu kısmı. Bunun ekran görüntüsü video da şöyle: 

<img width="666" alt="image" src="https://user-images.githubusercontent.com/56068905/198725908-dac737b3-c63a-40ad-b438-faa50d2abd68.png">

Ama ben bulamadım.

Buldum buldum.

<img width="696" alt="image" src="https://user-images.githubusercontent.com/56068905/198726287-89fbe2fa-bcbd-4dce-a356-7f8ee43388f5.png">

Sağdaki bottom kısmına tıkladığında bu pencere açılıyor

Daha sonra videonun ekran görüntüsü gibi yaptım.

Daah sonra controle basarak yukarıda ki butona tıklayarak equal heights yaptım. Daha sonra butonların kendi içerisinde aspect radio yaptım.

equal heights: Bu kural, her zaman üç bayrağın aynı yüksekliğe sahip olmasını sağlar, bu nedenle Otomatik Düzen artık hepsini sığdırmak için bir düğmeyi ezemez ve bunun yerine üçünü de eşit şekilde ezmelidir.

Aspect Radio kısıtlaması, ezilmeyi bir kez ve herkes için çözer: Bu, Otomatik Düzen bayrağın yüksekliğini azaltmak zorunda kalırsa, genişliğini aynı oranda azaltacağı anlamına gelir; bu, bayrağın her zaman doğru görüneceği anlamına gelir. Diğer iki bayrağa Aspect Radio (en boy oranı) kısıtlamasını ekleyin ve uygulamanızı yeniden çalıştırın. Otomatik Düzen sayesinde portre ve manzarada harika çalışmaktadır.

<img width="500" alt="asd" src="https://user-images.githubusercontent.com/56068905/198726485-bd32b475-68eb-4f4d-a640-163a60a60081.png">

<img width="400" height="800" alt="asd" src="https://user-images.githubusercontent.com/56068905/198726511-5f504920-05f1-4b02-a9d4-169ed0fd8346.png">

Günün sonunda böyle bir olay çıkıyor.


# İkinci Proje | Programatic olarak Constrait ekleme. Önemli !!

<img width="557" alt="image" src="https://user-images.githubusercontent.com/56068905/198729794-0e214cdc-55b2-4f7a-a117-e8b77653aeef.png">

Tüm bu kodlar, her biri benzersiz metin ve benzersiz bir arka plan rengine sahip beş UILabel nesnesi oluşturur. Beş görünümün tümü daha sonra view.addSubview() kullanılarak görünüm denetleyicimize ait görünüme eklenir.

translatesAutoresizingMaskIntoConstraints kullanmamızın sebebi: varsayılan olarak iOS, bir görünümün boyutuna ve konumuna göre sizin için Otomatik Düzen kısıtlamaları oluşturur. Bunu elle yapacağız, bu yüzden bu özelliği devre dışı bırakmamız gerekiyor.

etiketlerimiz varsayılan konumlarına (ekranın sol üst köşesine) yerleştirilir ve her birinde sizeToFit() işlevini çağırdığımız için tümü içeriklerine uyacak şekilde boyutlandırılır.

Bu gereksiz görünebilir, ancak biraz daha bekleyin: biraz Visual Format Language! (VFL)

<img width="780" alt="image" src="https://user-images.githubusercontent.com/56068905/198730403-fad71f9d-8667-4e0a-a36f-6045500a7e91.png">

view.addConstraints(): bu, görünüm denetleyicimizin görünümüne bir dizi kısıtlama ekler. Bu dizi, tek bir kısıtlama yerine kullanılır, çünkü VFL aynı anda birden çok kısıtlama üretebilir.

NSLayoutConstraint.constraints(withVisualFormat:): VFL'yi bir dizi kısıtlamaya dönüştüren Otomatik Düzen yöntemidir. Birçok parametreyi kabul eder, ancak önemli olanlar ilk ve sonuncusudur.

options parametresi için [] (boş bir dizi) ve metrics parametresi için nil iletiyoruz. VFL'nin anlamını özelleştirmek için bu seçenekleri kullanabilirsiniz, ancak şimdilik umursamıyoruz.

"H:|[label1]|" Gördüğünüz gibi, bu bir dizedir ve bu dize, yerleşimin nasıl görünmesini istediğimizi açıklar. Bu VFL, Otomatik Düzen kısıtlamalarına dönüştürülür ve ardından görünüme eklenir.

H: parçaları, yatay bir yerleşim tanımladığımız anlamına gelir; Yakında dikey bir düzen yapacağız. The pipe symbol |, "görünümün kenarı" anlamına gelir. Bu kısıtlamaları, görünüm denetleyicimizin içindeki ana görünüme ekliyoruz, bu nedenle bu, etkin bir şekilde "görünüm denetleyicisinin kenarı" anlamına gelir. Son olarak, "label1'i buraya koy" demenin görsel bir yolu olan [label1] var. Köşeli ayraçların [ and ] görünümünün kenarları olduğunu hayal edin.

<img width="686" alt="image" src="https://user-images.githubusercontent.com/56068905/198731017-71785033-2c17-4fd7-bca0-2ea2c00e1b38.png">

Bu, VFL kısmı dışında önceki beş ile aynıdır. Bu sefer V: belirtiyoruz, yani bu kısıtlamalar dikey. Ve VFL içinde birden fazla görüşümüz var, bu nedenle çok sayıda kısıtlama oluşturulacak. Bu sefer VFL'deki yeni şey, "boşluk" anlamına gelen - sembolüdür. Varsayılan olarak 10 puandır, ancak bunu özelleştirebilirsiniz.
