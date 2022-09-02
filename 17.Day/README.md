# Day 17

1. Bu resimleri diğer bir sayfaya geçirerek detaylı bir şekilde görmek istiyoruz. Bunun için yapmamız gereken çok basit.

2. imageView ekliyoruz. Eklediğimiz imageView'a ulaşmak için bir tane DetailViewController oluşturuyoruz. 

<img width="639" alt="image" src="https://user-images.githubusercontent.com/56068905/188128835-10778dee-0017-4bda-b194-de0d44d9b36c.png">

3. Aynı zamanda viewWillAppear ve viewWillDisappear Navigator.Controller kullanarak AppBar'ı gizleyebiliyoruz ve resimler tam ekran olabiliyor.

4. Detail'de ki sayfayı View'e bağlamak için aşağıda ki kodlar yazılıyor.

<img width="777" alt="image" src="https://user-images.githubusercontent.com/56068905/188129037-846d80d5-5cc0-40ed-8019-8a401ec5bc1c.png">

pictures array'inde ki indexPath'e erişip Detail'de ki değişkene Constructor ile ulaşıp buradan, navigator push ile gönderiyoruz.
