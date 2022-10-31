# 33. Gün

Modelimizi Struct üzerinde kuracağız ve protocol olarak Codable kullanacağız. Codable kütüphanesi bize, Encodoing ve Decoding işlemlerini çok rahat bir şekilde yapmamızı sağlamaktadır.

```
struct Petition : Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
```

Codable bizden verilerin tam olarak nerede duracağını bilmek istiyor. Bunun için ikinci struct yapısını tutacağız ve orada bir Array tutacağız sadece. Bu arrayde her bir obje bir Petition dur.
