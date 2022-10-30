# 32. Gün

# 3. Consolidation projesi & 6. Proje

<img width="300" src="https://user-images.githubusercontent.com/56068905/198898220-7882da65-15ae-43b4-a86d-0b7d45a6a434.png"> <img width="300" src="https://user-images.githubusercontent.com/56068905/198898252-6279a54b-2d3a-4b1a-88c2-0ad35e0cdfaf.png"> 

<img width="300" src="https://user-images.githubusercontent.com/56068905/198898351-ecbb1d04-eef6-4929-9cce-4c978216a6f7.png"> <img width="300" src="https://user-images.githubusercontent.com/56068905/198898414-7cbd4c58-2108-4f19-b728-5a13549fe3d4.png">

##declaration
```var shoppingList = [String]()```

## viewDidLoad

```
 override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Shopping List"

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addShopList))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareShopList))
    }
```

## addShopList

```
 @objc func addShopList() {
        let ac = UIAlertController(title: "Add to List", message: "What do you want?", preferredStyle: .alert)
        ac.addTextField()
        
        let submitAction = UIAlertAction(title: "Add", style: .default) {
            [weak self, weak ac] action in
            guard let txt = ac?.textFields?[0].text else { return }
            
            if !self!.shoppingList.contains(txt) {
                self?.submit(txt)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        ac.addAction(submitAction)
        ac.addAction(cancelAction)
        present(ac, animated: true)
    }
    
    func submit(_ txt: String) {
        shoppingList.append(txt)
        self.tableView.reloadData()
    }
```

## shareShopList
```
@objc func shareShopList() {
        let list = shoppingList.joined(separator: "\n")
        
        let vc = UIActivityViewController(activityItems: [list], applicationActivities: nil)
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
}
```

## tableView
```
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return shoppingList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = shoppingList[indexPath.row].lowercased()
        return cell
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            shoppingList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
```
