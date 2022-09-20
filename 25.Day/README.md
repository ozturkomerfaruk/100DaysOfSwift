# 25. Gün

### **decidePolicyFor** Olayını Tam Anlamadım. Salladım burada bir şeyler

ProgressBar ve BottomBar

``` var progressView: UIProgressView! ```

<img width="791" alt="image" src="https://user-images.githubusercontent.com/56068905/188859299-0a4b179a-7b93-480d-9574-e469fa9fb978.png">

<img width="784" alt="image" src="https://user-images.githubusercontent.com/56068905/188859495-23f39343-1d07-4354-a74c-e4ea6767798b.png">

Bu, dizimizdeki her öğe için bir UIAlertAction nesnesi ekleyecektir. Yine, çok karmaşık değil.

Son değişiklik yeni bir şey ve WKNavigationDelegate protokolüne ait. Yeni bir yöntem için yer bulursanız ve "web" yazmaya başlarsanız, WKWebView ile ilgili kod tamamlama seçeneklerinin listesini görürsünüz. decidePolicyFor adlı birini arayın ve Xcode'un yöntemi sizin için doldurmasına izin verin.

Bu temsilci geri araması, her şey olduğunda navigasyonun gerçekleşmesine izin vermek isteyip istemediğimize karar vermemizi sağlar. Sayfanın hangi bölümünün gezinmeyi başlattığını kontrol edebiliriz, bir bağlantının tıklanması veya bir form gönderilmesiyle tetiklenip tetiklenmediğini görebiliriz veya bizim durumumuzda beğenip beğenmediğimizi görmek için URL'yi kontrol edebiliriz.

Ve hata yapmayın: bu karar İşleyicisi kapanışıyla bir şeyler yapmanız gerekiyor. Bu, sesi bir yöntemden değer döndürmenin son derece karmaşık bir yolu haline getirebilir ve bu doğru – ama aynı zamanda gücü biraz hafife alıyor! Bu kararHandler değişkenine/işlevine sahip olmak, kullanıcıya "Bu sayfayı gerçekten yüklemek istiyor musunuz?" diye bir kullanıcı arabirimi gösterebileceğiniz anlamına gelir. ve bir cevabınız olduğunda kapanışı arayın.

Bu nedenle Swift, bu yöntemi belirtirken @escaping özel anahtar sözcüğünü eklememizi istiyor, bu nedenle kapatmanın daha sonra kullanılabileceğini kabul ediyoruz. Başka bir şey yapmanıza gerek yok – aşağıdaki kodda göreceğiniz gibi sadece o anahtar kelimeyi ekleyin.

Bu nedenle, güvenli listemizde olup olmadığını görmek için URL'yi değerlendirmemiz ve ardından karar İşleyicisini olumsuz veya olumlu bir cevapla aramamız gerekiyor. İşte yöntemin kodu:

<img width="825" alt="image" src="https://user-images.githubusercontent.com/56068905/188867873-e2d17899-986c-492a-88e9-236df775c447.png">

