# 27 .Gün

Closure çağrılma şansı varken yakalanan değerinizin asla kaybolmayacağını biliyorsanız, **unowned** kullanılması gerekir. Eğer geleceğini tam bilmiyorsanız **weak** fakat burada guard let kulanılması zorunludur. Default da ise **strong** vardır.

Güçlü bir referans döngüsü durumunuz varsa – A'nın B'ye ve B'nin A'ya sahip olduğu – o zaman ikisinden biri zayıf yakalama kullanmalıdır. Bu genellikle ikisinden hangisi önce yok edilecekse bu olmalıdır, bu nedenle görünüm denetleyicisi A, görünüm denetleyicisi B'yi sunarsa, görünüm denetleyicisi B, A'ya zayıf bir referans alabilir.

Eğer emin değilseniz o zaman ilk **weak** ile başlayın.

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/197698562-9bbe7062-c0bd-4836-ace8-0d5f9b0d99d4.png">

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/197698601-19c077ec-49a2-462b-938e-4d8f97188a27.png">

<img width="694" alt="image" src="https://user-images.githubusercontent.com/56068905/197698657-339a2e92-acf6-41cb-86d3-440ce485834b.png">

Kodlama aşamasına geçmeden önce TableViewController eklendi ve Cell kısmına id olarak WordCell verdim.

<img width="729" alt="image" src="https://user-images.githubusercontent.com/56068905/197973834-f367491a-1684-4c80-89e8-3e827ce9bb59.png">

Bundle.main.url ile txt den veri okuma işlemini gerçekleştirdim ve components seperatedBy kullanarak \n olan her yeri görerek txt yi parse lama işlemini gerçekleştirdim. Gelen veri optional dır. try kullanarak yazdım.

<img width="806" alt="image" src="https://user-images.githubusercontent.com/56068905/197974622-380659fa-ce99-4441-8e3b-41d8b3370c58.png">

Daha sonra klasik TableView işlemlerini yazdım.

navigationItem eklemek için:

<img width="771" alt="image" src="https://user-images.githubusercontent.com/56068905/198124802-f3b90966-08e4-4c96-a62f-7bccda6dee6b.png">

<img width="742" alt="image" src="https://user-images.githubusercontent.com/56068905/198124847-af5459f9-dd15-43bb-9ac9-d340a45c1699.png">

<img width="268" alt="image" src="https://user-images.githubusercontent.com/56068905/198125467-126cc0aa-10d2-4925-aebc-71acc42b355c.png">

<img width="190" alt="image" src="https://user-images.githubusercontent.com/56068905/198125513-29350bb3-620d-407f-ab40-a564c1b611bd.png">
