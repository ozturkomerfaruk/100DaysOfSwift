# Day 16

1. FileManager ile dosya arama yapmak için kullanılıyor.

2 Bundle.main.resourcePath! ile bulunan dosyalarım nerede göster bana diyoruz.

3. try! fm.contentsOfDirectory(atPath: path) şeklinde tanımlarsak eğer, bu bize doğruca pathleri bir array olarak döndürmemize yardım ediyor.

<img width="506" alt="image" src="https://user-images.githubusercontent.com/56068905/188061968-3b42cdf8-1800-4e8b-bee8-ccbab723906a.png">

pictures Arrayinde artık resimlerimizi tutabiliyoruz. Bunu şimdi tablview ekranında bastırmak gerekiyor.

4. TableView Controller kullanıyoruz. Sınıf adını ve sınıf adının hemen altında ki her bir Row'u temsil eden Cell'in yeni adını giriyoruz ve daha sonra ViewController sayfasında ki Controller'ımıza geliyoruz.

Artık View controller UITableViewController'den türüyor olacak.

TableView'da göstermek için 2 method ekleniyor.

* Showing lots of rows 
 
return değerinden de anlaşılacağı üzerine Pictures Array'inde ki sayı kadar TableView'ın çalışmasını sağlayacak.

<img width="704" alt="image" src="https://user-images.githubusercontent.com/56068905/188062256-ae385748-43e1-4965-8c77-0b958968c229.png">

* Dequeuing cells

indexPath, her bir satırın indexini temsil etmektedir. Her bir satırın ismini Controller sayfasında Picture olarak girmiştik. Şimdi kullanmak için dequeueReusableCell kullanıyoruz.

<img width="687" alt="image" src="https://user-images.githubusercontent.com/56068905/188062471-e02668b8-5bac-44fe-8bd9-78d02451bb5e.png">
