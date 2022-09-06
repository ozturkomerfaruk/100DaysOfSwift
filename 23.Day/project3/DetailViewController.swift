//
//  detailViewController.swift
//  project3
//
//  Created by Ömer Faruk Öztürk on 6.09.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    
    var selectedImage: String = ""
    var selectedCountryName: String = ""
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Flags List"
        
        label.text = selectedCountryName
        imageView.image = UIImage(named: selectedImage)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(sharedTapped))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
        imageView.contentMode = .scaleAspectFill
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
        imageView.contentMode = .scaleToFill
        
    }
    
    @objc func sharedTapped(){
        guard let image = imageView.image?.jpegData(compressionQuality: 1) else {
            print("No image found!")
            return
        }
        guard let country = label.text else {
            print("No country name found!")
            return
        }
        
        
        let vc = UIActivityViewController(activityItems: [image, ("Selected Country -> " + country)], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }
    
    
}
