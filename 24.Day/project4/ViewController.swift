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
    }
    
    @objc func openTapped(){
        let ac = UIAlertController(title: "Open Page", message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "My Blog Page", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Linkedin", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Github", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Patika", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Turkcell", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Cancel", style: .default))
        ac.popoverPresentationController?.barButtonItem = self.navigationItem.rightBarButtonItem
        present(ac, animated: true)
    }
    
    func openPage (action: UIAlertAction) {
        var url: URL
        switch action.title! {
        case "My Blog Page":
            url = URL(string: "https://www.ozturkomerfaruk.com")!
        case "Linkedin":
            url = URL(string: "https://www.linkedin.com/in/ozturkomerfaruk/")!
        case "Github":
            url = URL(string: "https://github.com/ozturkomerfaruk")!
        case "Patika":
            url = URL(string: "https://app.patika.dev/ozturkomerfaruk")!
        case "Turkcell":
            url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/kisi/omerfarukozturk026")!
        default:
            url = URL(string: "https://www.ozturkomerfaruk.com")!
        }
        webView.load(URLRequest(url: url))
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
}

