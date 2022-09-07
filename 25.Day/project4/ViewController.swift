//
//  ViewController.swift
//  project4
//
//  Created by Ömer Faruk Öztürk on 7.09.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    var progressView: UIProgressView!
    var webSites = [
        "My Blog Page": "https://www.ozturkomerfaruk.com",
        "Linkedin":"https://www.linkedin.com/in/ozturkomerfaruk/",
        "Github":"https://github.com/ozturkomerfaruk",
        "Patika":"https://app.patika.dev/ozturkomerfaruk",
        "Turkcell":"https://gelecegiyazanlar.turkcell.com.tr/kisi/omerfarukozturk026"
    ]
    
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.ozturkomerfaruk.com")
        webView.load(URLRequest(url: url!))
        webView.allowsBackForwardNavigationGestures = true
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
        progressView = UIProgressView(progressViewStyle: .default)
        progressView.sizeToFit()
        let progressButton = UIBarButtonItem(customView: progressView)
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: webView, action: #selector(webView.goBack))
        let forwardButton = UIBarButtonItem(title: "Forward", style: .plain, target: webView, action: #selector(webView.goForward))
        
        toolbarItems = [progressButton, spacer, backButton, forwardButton , refresh]
        navigationController?.isToolbarHidden = false
        
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        
    }
    
    @objc func openTapped(){
        let ac = UIAlertController(title: "Open Page", message: nil, preferredStyle: .actionSheet)
        for (page, _) in webSites {
            ac.addAction(UIAlertAction(title: page, style: .default, handler: openPage))
        }
        ac.addAction(UIAlertAction(title: "Cancel", style: .default))
        ac.popoverPresentationController?.barButtonItem = self.navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }
    
    func openPage (action: UIAlertAction) {
        var url: URL
        switch action.title! {
        case "My Blog Page":
            url = URL(string: webSites["My Blog Page"]!)!
        case "Linkedin":
            url = URL(string: webSites["Linkedin"]!)!
        case "Github":
            url = URL(string: webSites["Github"]!)!
        case "Patika":
            url = URL(string: webSites["Patika"]!)!
        case "Turkcell":
            url = URL(string: "https:gelecegiyazanlar.turkcell.com.tr/kisi/omerfarukozturk026")!
        default:
            url = URL(string: webSites["My Blog Page"]!)!
        }
        webView.load(URLRequest(url: url))
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(webView.estimatedProgress)
        }
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        let url = navigationAction.request.url
        print(url!)
        print("************************")
        if let host = url?.host {
            for website in webSites.values {
                if host.contains(url!.host!) {
                    decisionHandler(.allow)
                    return
                }
                print(website)
            }
        }
        
        let urlString = url?.absoluteString ?? "Unknown"

               // filter out "about:blank" to avoid unnecessary alerts
               if urlString != "about:blank" {
                   // to test this alert: go to hackingwithswift.com, then under the book "swift in sixty seconds" click "buy download"
                   let ac = UIAlertController(title: "Unauthorized", message: "Website \"\(urlString)\" is not part of authorized websites", preferredStyle: .alert)
                   ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                   present(ac, animated: true)
               }
        
        decisionHandler(.cancel)
    }
}

