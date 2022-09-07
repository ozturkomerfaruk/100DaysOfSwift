# Day 25

### **decidePolicyFor** Olayını Tam Anlamadım. Salladım burada bir şeyler

ProgressBar ve BottomBar

``` var progressView: UIProgressView! ```

<img width="791" alt="image" src="https://user-images.githubusercontent.com/56068905/188859299-0a4b179a-7b93-480d-9574-e469fa9fb978.png">

<img width="784" alt="image" src="https://user-images.githubusercontent.com/56068905/188859495-23f39343-1d07-4354-a74c-e4ea6767798b.png">

That will add one UIAlertAction object for each item in our array. Again, not too complicated.

The final change is something new, and it belongs to the WKNavigationDelegate protocol. If you find space for a new method and start typing "web" you'll see the list of WKWebView-related code completion options. Look for the one called decidePolicyFor and let Xcode fill in the method for you.

This delegate callback allows us to decide whether we want to allow navigation to happen or not every time something happens. We can check which part of the page started the navigation, we can see whether it was triggered by a link being clicked or a form being submitted, or, in our case, we can check the URL to see whether we like it.

And make no mistake: you are required to do something with that decisionHandler closure. That might make sound an extremely complicated way of returning a value from a method, and that's true – but it's also underestimating the power a little! Having this decisionHandler variable/function means you can show some user interface to the user "Do you really want to load this page?" and call the closure when you have an answer.

Because of this, Swift wants us to add the special keyword @escaping when specifying this method, so we’re acknowledging that the closure might be used later. You don’t need to do anything else – just add that one keyword, as you’ll see in the code below.

So, we need to evaluate the URL to see whether it's in our safe list, then call the decisionHandler with a negative or positive answer. Here's the code for the method:

<img width="825" alt="image" src="https://user-images.githubusercontent.com/56068905/188867873-e2d17899-986c-492a-88e9-236df775c447.png">

