# 27 .Gün

Closure çağrılma şansı varken yakalanan değerinizin asla kaybolmayacağını biliyorsanız, **unowned** kullanılması gerekir. Eğer geleceğini tam bilmiyorsanız **weak** fakat burada guard let kulanılması zorunludur. Default da ise **strong** vardır.

Güçlü bir referans döngüsü durumunuz varsa – A'nın B'ye ve B'nin A'ya sahip olduğu – o zaman ikisinden biri zayıf yakalama kullanmalıdır. Bu genellikle ikisinden hangisi önce yok edilecekse bu olmalıdır, bu nedenle görünüm denetleyicisi A, görünüm denetleyicisi B'yi sunarsa, görünüm denetleyicisi B, A'ya zayıf bir referans alabilir.

Eğer emin değilseniz o zaman ilk **weak** ile başlayın.

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/197698562-9bbe7062-c0bd-4836-ace8-0d5f9b0d99d4.png">

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/197698601-19c077ec-49a2-462b-938e-4d8f97188a27.png">

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/197698657-339a2e92-acf6-41cb-86d3-440ce485834b.png">
