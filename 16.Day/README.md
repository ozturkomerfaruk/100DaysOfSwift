# Day 16

1. It is used to search files with FileManager.

2 Show me where are my files found with Bundle.main.resourcePath!

3. try! If we define it as fm.contentsOfDirectory(atPath: path) this helps us to return the paths as an array directly.

<img width="506" alt="image" src="https://user-images.githubusercontent.com/56068905/188061968-3b42cdf8-1800-4e8b-bee8-ccbab723906a.png">

We can now keep our pictures in the Pictures Array. This now needs to be suppressed on the table view screen.

4. We are using TableView Controller. We enter the class name and the new name of the Cell that represents each Row just below the class name, and then we come to our Controller on the ViewController page.

Now View controller will derive from UITableViewController.

Adding 2 methods to show in TableView.

* Showing lots of rows 
 
As it can be understood from the return value, it will make the TableView work as much as the number in the Pictures Array.

<img width="704" alt="image" src="https://user-images.githubusercontent.com/56068905/188062256-ae385748-43e1-4965-8c77-0b958968c229.png">

* Dequeuing cells

indexPath represents the index of each row. We entered the name of each line as Picture on the Controller page. Now we use dequeueReusableCell to use.

<img width="687" alt="image" src="https://user-images.githubusercontent.com/56068905/188062471-e02668b8-5bac-44fe-8bd9-78d02451bb5e.png">
   
