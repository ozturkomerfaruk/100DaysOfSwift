# 31. Gün

## Bir yöntem

<img width="791" alt="image" src="https://user-images.githubusercontent.com/56068905/198891768-f15ab7f3-cc74-49b9-a6f7-f0370c1a2c1c.png">

(==88) yapmak yükseliğini belirtiyor. 

(>=10) aşağıya olan uzaklık demek

- biraz boşluk bırakmak demek

## En sona gelen  | da en aşağıyı temsil etmektedir.

<img width="741" alt="image" src="https://user-images.githubusercontent.com/56068905/198891878-38824031-8536-4155-9a45-a6d357556593.png">

Bir değişkene atayarak yapmak. metrics kullanmak özelleştirmeyi sağlar.

## Bir başka yöntem

<img width="715" alt="image" src="https://user-images.githubusercontent.com/56068905/198891947-e5b8bc06-b02b-4429-88d3-eb50b8ab6baa.png">

label1 'i öncelik olan en üste alıp diğerlerinin label1 ile aynı tutuyoruz.

## Diğer bir yöntem

<img width="830" alt="image" src="https://user-images.githubusercontent.com/56068905/198892414-0b1fc501-f9f0-462c-a410-fb5cd8ee60fc.png">

Every UIView has a set of anchors that define its layouts rules. The most important ones are widthAnchor, heightAnchor, topAnchor, bottomAnchor, leftAnchor, rightAnchor, leadingAnchor, trailingAnchor, centerXAnchor, and centerYAnchor.

Yani herbiri için ayrı ayrı yapılabilir. Ama bu mesela arapça dilinde sağdan sola yani rightAnchor dan leftAnchor'a

```label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true```

Burada o durumu giriyoruz.

```label.heightAnchor.constraint(equalToConstant: 88).isActive = true``` 

herbirinin yüksekliği

```
 if let previous = previous {
                // we have a previous label – create a height constraint
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                // this is the first label
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
```

Üstten ve aşağıdan ne kadar yükseklik verilebilmesi durumu. safeArea Flutter mantığı ile aynı.

En sonda da label'i previous'a atıyoruz. 

# 6. Proje Tamamlandı

<img width="250" height="500" src="https://user-images.githubusercontent.com/56068905/198893287-37819577-ff3a-4aeb-8c37-90ac2cdacaaa.png">

<img width="500" src="https://user-images.githubusercontent.com/56068905/198893308-6ef056a2-df89-4b2d-ab52-4dd15ca18063.png">


  
