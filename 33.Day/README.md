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

```
struct Petitions: Codable {
    var results: [Petition]
}
```

Daha sonra Data sınıfını kullanarak JSON verilerine ulaşabiliyoruz.

```
override func viewDidLoad() {
    super.viewDidLoad()

    // let urlString = "https://api.whitehouse.gov/v1/petitions.json?limit=100"
    let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"

    if let url = URL(string: urlString) {
        if let data = try? Data(contentsOf: url) {
            // we're OK to parse!
        }
    }
}
```

## Parse işlemi

```
func parse(json: Data) {
    let decoder = JSONDecoder()

    if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
        petitions = jsonPetitions.results
        tableView.reloadData()
    }
}
```

Harici bir kütüphane kullanmadan parse işlemi gerçekleşti.    
