# Day 17

1. We would like to see these pictures in detail by transferring them to another page. What we need to do for this is very simple.

2. We add imageView. We create a DetailViewController to reach the imageView we added.

<img width="639" alt="image" src="https://user-images.githubusercontent.com/56068905/188128835-10778dee-0017-4bda-b194-de0d44d9b36c.png">

3. We can also hide AppBar using viewWillAppear and viewWillDisappear Navigator.Controller and images can be full screen.

4. The following codes are written to connect the page in Detail to the View.

<img width="777" alt="image" src="https://user-images.githubusercontent.com/56068905/188129037-846d80d5-5cc0-40ed-8019-8a401ec5bc1c.png">

We access the indexPath in the pictures array, reach the variable in Detail with Constructor, and send it from there with navigator push.
