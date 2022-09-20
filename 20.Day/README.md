# 20. Gün

İlk olarak 3 tane butonun IBAction özellikleri eklendi. Bu özellikler fonksiyona kod üzerine bir triggerlama özelliği kazandırmaktadır.

askQuestion metodunda, countries arrayinin içindekilerini karıştırmak için Shuffle kullanıldı.

correctAnswer değişkenine random bir şekilde 0-2 arasında bir sayı atandı. Atanan sayıyı countries arrayinde ki ilk 3 elemanı ekrana bastırarak, arrayin içine konuldu.

Böylece uygulama ekranında 3 butondan biri benim cevabım olacak.

<img width="466" alt="image" src="https://user-images.githubusercontent.com/56068905/188282805-e795dc9d-052a-4e8e-8c38-a658237f15c8.png">

Daha sonra butonların aksiyon tarafları doldurulmaya başlandı.

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/188282823-d5982a6d-f0c8-4670-84a0-694fafd8b646.png">

Bütün butonları command ile aynı aksiyona sürüklersen bütün butonların action tarafları aynı olmaktadır. Aradaki farkı anlamak için ise sender.tag denilerek tag üzerinden bir anlaşma sergilenmektedir. Butonlara sırasıyla 0,1,2 tagları verilmiştir. correctAnswer değişkeni de 0,1,2 almaktaydı. Bunları eşitleme yapınca butonlar cevap haline geldi.

Ekrana Alert Dialog bastırmak bu şekilde

<img width="645" alt="image" src="https://user-images.githubusercontent.com/56068905/188282904-febea532-8e98-4ffc-8dc1-b4cc982029e8.png">
