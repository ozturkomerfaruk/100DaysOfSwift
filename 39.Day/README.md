# 39. Gün

Dispatch Queue olaylarına giriyoruz.

<img width="847" alt="image" src="https://user-images.githubusercontent.com/56068905/209464951-3357f153-3a3e-451e-a740-16ecb1eb1d96.png">

Kuyruklar ile çalışırken bu kuyrukların veya görevlerin hizmet kalitesini tanımlayabiliriz. Bu yapı sayesinde görevlere öncelikler vererek kaynakların uygun görevlere ayrılmasını, uygulamanın daha duyarlı olmasını ve pil tasarrufu yapabilmeyi sağlayabiliriz. Kullanabileceğimiz altı farklı QoS değeri vardır.

.userInteractive: Kullanıcının doğrudan etkileşim halinde olduğu UI ve animasyonlar gibi işlemlerde kullanılması önerilir. Bu kuyrukta ilerletilen görevler anında tamamlanabilecek görevler olmalıdır.

.userInitiated: Kullanıcı ile bağlantılı olduğu için hemen gerçekleşmesi gereken ancak eşzamanlı da ilerletilebilinen görevlerde kullanılması önerilir. Örneğin local veritabanından veri okumamız gerektiğinde kullanabiliriz. Bu kuyruktaki görevler en fazla birkaç saniye sürecek görevler olmalıdır.

.default: Kullanıldığında bir QoS değeri tanımlanmamış olarak varsayılır ve işlem önceliğine sistem karar verir. Sistem her şeyi planlayabiliyorken bu seçimi sisteme bırakmak ne kadar doğru görünse de default kullanımı her zaman doğru bir yaklaşım olmayacaktır. Çünkü görevleri yürütürken belirlediğimiz öncelik görevlerin doğru çalışabilmesi için önemlidir. Beklediğimiz önceliği sistem vermezse bu görevlerin yürütülmesinde sorun oluşturabilir.

.utility: Genellikle uzun sürebilecek hesaplamalar, sürekli veri beslemeleri gibi devam eden işlemlerde kullanılır. Bu önceliğe sahip kuyruklar üzerinde görevler ilerlerken sistem performans ve enerji verimliliğini dengede tutmaya çalışır. Bu kuyruktaki görevlerin süresi birkaç dakikayı geçmemelidir.

.background: Kullanıcıyı doğrudan etkilemeyen, arka planda gerçekleşen, veritabanı bakımı, uzak sunucu senkronizasyonu gibi işlerde kullanılması önerilir. Sistem bu kuyruktaki görevler ilerlerken enerji verimliliğine öncelik verir. Bu kuyruğa eklenen görevler dakikalarca sürebilecek uzun görevlerdir.

.unspecified: Herhangi bir QoS bilgisinin olmadığını temsil eder. QoS bilgisinin olması gerektiği yerlerde kullanılması tavsiye edilmez.

NOT: Kuyrukları QoS değerini belirterek oluşturabiliriz. Ancak kuyrukların QoS değeri her zaman belirttiğimiz seviyede kalmayacaktır. Eğer bir kuyruğa kuyruğun QoS seviyesinden daha yüksek seviyeli bir görev gönderirsek, görevin yürütüldüğü kuyruğun QoS değeri sistem tarafından görevin QoS değerine yükseltilir. Bu yalnızca belirtilen görev için geçerli değildir. Sonrasında gelen görevler de kuyruğun güncel QoS değerine göre yürütülürler.

<img width="729" alt="image" src="https://user-images.githubusercontent.com/56068905/209465029-70eec342-78ab-4c2b-b092-8f3a03ef685e.png">

## Bu yapılara gerek kalmadan şunlarda kullanılabilir: 

<img width="825" alt="image" src="https://user-images.githubusercontent.com/56068905/209465362-0a3d73ed-c335-4fb9-9e3e-96cc3366de8e.png">

<img width="825" alt="image" src="https://user-images.githubusercontent.com/56068905/209465367-52d53866-07c8-4c49-9323-8d6bab96a867.png">
