//
//  TableViewController.swift
//  project3
//
//  Created by Ömer Faruk Öztürk on 6.09.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var flagsDataSD = [String]()
    var flagsDataHD = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Flags List"
        
        let fm = FileManager.default
        let pathHD = Bundle.main.resourceURL!.appendingPathComponent("flags_hd").path
        let itemsHD = try! fm.contentsOfDirectory(atPath: pathHD)
        let pathSD = Bundle.main.resourceURL!.appendingPathComponent("flags_sd").path
        let itemsSD = try! fm.contentsOfDirectory(atPath: pathSD)
        
        for itemSD in itemsSD {
            flagsDataSD.append(itemSD.components(separatedBy: ".png").first!.suffix(2).uppercased())
        }
        
        for itemHD in itemsHD {
            flagsDataHD.append(itemHD.components(separatedBy: ".png").first!.suffix(2).uppercased())
        }
        flagsDataSD.sort()
        flagsDataHD.sort()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flagsDataSD.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "flagsCell", for: indexPath)
        cell.imageView?.image = UIImage(named: codeToPath(isHD: false, code: flagsDataSD[indexPath.row]))
        cell.layer.borderWidth = 4
        cell.layer.borderColor = CGColor.init(red: 255, green: 255, blue: 255, alpha: 255)
        cell.textLabel?.text = codeToCountry(code: flagsDataSD[indexPath.row])
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            //vc.imageView = UIImage(named: codeToPath(code: flagsDataSD[indexPath.row]))
            vc.selectedCountryName = codeToCountry(code: flagsDataSD[indexPath.row])
            vc.selectedImage = codeToPath(isHD: true, code: flagsDataHD[indexPath.row])
        
            print(indexPath.row)
            print(vc.selectedImage)
            print(vc.selectedCountryName)
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }

}
