# Day 19

3 tane buton ekledik. Bu butonları Auto Layout kapsamında, her iphone için geçerli bir tasarım nasıl yapılır, bunu öğrendik.

Daha sonra, 3 tane buton ekleyip, bu butonlara resimler eklemeyi gördük.

<img width="536" alt="image" src="https://user-images.githubusercontent.com/56068905/188219396-33d16194-75ab-4d52-83a4-2bd43c77eb3c.png">

Butona setImage ile resim eklenir. ikinci parametre for, hangi durumlarda değiştrilebilir olduğunu gösteren bir parametredir. .normal ise default dur.

Ekrana görsel olarak bir şeyler konulsa bile, her şey kod ekranında değiştirilebilir şeylerdir. Mesela ekrana geçici olarak bir resim eklense bile kod ekranında bunu setImage ile değiştirebilmemiz gibi. Peki bu resmin etrafına, daha doğrusu butonun etrafına nasıl bir dikdörtgen çerçeve ekleyebiliriz ve ona renk verebiliriz? Çok basit.

<img width="790" alt="image" src="https://user-images.githubusercontent.com/56068905/188222060-aa872920-c647-41ff-a0a1-bda7fac3446b.png">

Burada bir renk seçildikten sonra **cgColor** eklenir.
