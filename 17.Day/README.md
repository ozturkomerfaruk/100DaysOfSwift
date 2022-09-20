# Day 17

1. Bu resimleri başka bir sayfaya aktararak detaylı olarak görmek isteriz. Bunun için yapmamız gerekenler çok basit.

2. imageView ekliyoruz. Eklediğimiz imageView'a ulaşmak için bir DetailViewController oluşturuyoruz.

<img width="639" alt="image" src="https://user-images.githubusercontent.com/56068905/188128835-10778dee-0017-4bda-b194-de0d44d9b36c.png">

3. AppBar'ı viewWillAppear ve viewWillDisappear Navigator kullanarak da gizleyebiliriz.Controller ve görüntüler tam ekran olabilir.

4. Aşağıdaki kodlar Detaylı sayfayı Görünüm'e bağlamak için yazılmıştır.

<img width="777" alt="image" src="https://user-images.githubusercontent.com/56068905/188129037-846d80d5-5cc0-40ed-8019-8a401ec5bc1c.png">

Resimler dizisindeki indexPath'e erişiyoruz, Constructor ile Detail'deki değişkene ulaşıyoruz ve oradan navigator push ile gönderiyoruz.
