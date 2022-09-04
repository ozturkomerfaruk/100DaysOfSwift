# Day 22

#Selector kullanılmasının sebebi Objective-C tarafından çağrılmak zorunda olunduğudur.

<img width="682" alt="image" src="https://user-images.githubusercontent.com/56068905/188285852-69a6852d-a790-434c-8fff-1a27ec2337f7.png">

Eğer navigasyon bar çubuğunda en sağ tarafa bir şey eklemek istiyorsak rightBarButtonItem kullanıyoruz. 


info.plist dosyasında düzenlenmesi gereken yer

<img width="663" alt="image" src="https://user-images.githubusercontent.com/56068905/188285842-242a37f0-7e9d-42fb-b93c-f478386feeb6.png">

Daha sonra, sharedTappe butonuna tıklandığında ise bu kodlar çalışmaktadır.

<img width="695" alt="image" src="https://user-images.githubusercontent.com/56068905/188285878-e9437e01-172e-43b4-ba31-e60832c78d59.png">

Paylaş butonunu çalıştırmak için UIActivityViewController kullanılır. Tabi burada bu kullanımları ezbere kullanmamak için diğer tüm kullanımları yavaş yavaş görüp notlar almak gerekmektedir.

## Project 1 - Challenge

Mesela sağ üst tarafta, AppBarda bir shared butonu olacak ve orada bu sayfayı önereceksiniz diyelim.

<img width="662" alt="image" src="https://user-images.githubusercontent.com/56068905/188297754-8b2afdda-b6ee-4d82-9c52-35b8938e1236.png">

<img width="717" alt="image" src="https://user-images.githubusercontent.com/56068905/188297759-34c61ddf-2452-4b2c-adca-fd6e8c2a6b6c.png">

## Project 2 - Challenge

Burada sağ üst tarafta Score butonunu yapmak için viewLoad tarafta şu satırı yazmamız gerekmektedir.

<img width="888" alt="image" src="https://user-images.githubusercontent.com/56068905/188297681-c86b3920-f62e-4610-b9a4-defb8f80375b.png">

Daha sonra da bir yerde bu fonksiyon iş görmektedir.

<img width="939" alt="image" src="https://user-images.githubusercontent.com/56068905/188297694-3cbc0bc4-c3c7-4dce-8d1f-9849ca5c5530.png">

@objc - Objective C'den gelmektedir. 




![Simulator Screen Shot - iPhone 13 - 2022-09-04 at 07 50 33](https://user-images.githubusercontent.com/56068905/188297942-675a9a58-37a2-43e7-8d7e-50116dbba636.png)

![Simulator Screen Shot - iPhone 13 - 2022-09-04 at 07 50 44](https://user-images.githubusercontent.com/56068905/188297951-bbcb2221-1f1b-4b13-b69a-0467a677900f.png)

