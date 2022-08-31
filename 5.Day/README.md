# Day 5

1. Fonksiyon yazma

2. Parametreli fonksiyon yazma

3. Fonksiyonun bir değer döndürmesi

4. to ile Label ekleme

<img width="1180" alt="image" src="https://user-images.githubusercontent.com/56068905/187591155-580b2c69-199b-4f3e-89de-9d18d96ccb72.png">

5. Omitting parameter labels

<img width="695" alt="image" src="https://user-images.githubusercontent.com/56068905/187592044-d092d5fb-3837-453d-9f58-1e44794675a9.png">

_ koyarak başında ki etiketi kaldırıp direk kullanma yapabiliyorsun.

6. Default Param

<img width="821" alt="image" src="https://user-images.githubusercontent.com/56068905/187592124-48ba7b8c-a1b8-47f3-b792-73a8ad97c1ab.png">

7. Variadic Function

En önemlisi bu kısım. Bu kısım Clean Code mantığında çok büyük bir rol üstleniyor. Swiftin gücünü ortaya çıkarıyor.

<img width="536" alt="image" src="https://user-images.githubusercontent.com/56068905/187593386-04a014e0-45c2-4490-9231-1610de9db9c5.png">

8. Throw Functions

Bazı durumlarda fonksiyonlar hata mesajı döndürmelidir. Bunun için ilk başta enum oluşturulmalı. 

<img width="593" alt="image" src="https://user-images.githubusercontent.com/56068905/187594031-1b429c14-6b08-40fd-b231-6f18ecbbfd36.png">

9. Try Catch kullanımı ama Do ile
Evet burada kullanım açısından bir de do eklenmesi durumu bulunmaktadır. Eğer do içerisinde yapılırsa bu şu avantajı sağlamaktadır. Hata çıkması durumunda direk Catch bloguna atmaktadır.

Böylece Throw 'u try - catch ile nasıl daha efektif kullanılır. Onu öğrenmiş oldum.

<img width="857" alt="image" src="https://user-images.githubusercontent.com/56068905/187594697-61adc7fc-8535-486c-bc11-6e4d38561a67.png">

10. inout kullanımı

Fonksiyonda gelen parametreyi inout olarak almak demek, fonksiyon içerisinde o sayıyı istediğin gibi değiştirilebilir yapman demektir. Bu fonksiyonun içerisine gönderirken Ampersand kulanarak göndermek gerekmektedir. Yani, '&'

<img width="731" alt="image" src="https://user-images.githubusercontent.com/56068905/187595610-8b2d9c3a-3a8e-4e23-9189-9dbfd102ffd8.png">

