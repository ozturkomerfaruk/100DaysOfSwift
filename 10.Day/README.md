# Day 10

1. Çok temel yapıda class oluşturma.

2. Inheritence oluşturma

3. Inherit edilen class da methodu override etme

<img width="590" alt="image" src="https://user-images.githubusercontent.com/56068905/187767690-effd5499-1fe5-4c44-9681-6047a2844417.png">

4. Eğer inhrerit edilmesini istemiyorsanız ya da methodlarınızın override edilmesini istemiyorsanız final class kullanmak zorundasınız.

<img width="317" alt="image" src="https://user-images.githubusercontent.com/56068905/187768369-a18b2ef3-f79e-4c0e-ab9e-10716e961dbe.png">

5. Copying objects ***Önemli Bir Nokta!***

Singer ve singerCopy memoryde aynı yeri işaret etmektedirler. Bu yüzden dolayı kopyanın ismi değiştirildiğinde asıl olanın da ismi değişti.

Bir diğer önemli husus da eğer **class** yerine **struct** kullanılmış olsaydı memory de aynı yere işaret etmeyecek ve isim değişmeyecekti. 

<img width="726" alt="image" src="https://user-images.githubusercontent.com/56068905/187785353-4472c3e1-3a98-41be-80c6-d11fd62eb5f8.png">

6. Deinit Method

Dart dilinde ki destroy metodu burada da var. İsmi deinit olarak geçmektedir. Dispose etmeyi unutmamak gerek!

<img width="542" alt="image" src="https://user-images.githubusercontent.com/56068905/187788380-e9e5e694-d7c2-46be-b6db-8093a3a9f91b.png">

7. Mutability

Struct yapısında ki mutating keyword'une gerek kalmadan Class yapısında değiştirilebilir olmaktadır.

