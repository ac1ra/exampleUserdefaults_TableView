//
//  ViewController.swift
//  test_userdefault_row
//
//  Created by ac1ra on 05.01.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableVC_lang: UITableView!
 
    let romeImg = UIImage(named: "rome.jpg")
    let parisImg = UIImage(named: "paris.jpg")
    let santoriniImg = UIImage(named: "santorini.jpg")
    let sydneyImg = UIImage(named: "sydney.jpg")
    let zurichImg = UIImage(named: "zurich.jpg")
    let newyorkImg = UIImage(named: "newyork.jpg")
    let kyotoImg = UIImage(named: "kyoto.jpg")
    let londonImg = UIImage(named: "london.jpg")
    let istanbulImg = UIImage(named: "istanbul.jpg")
    
    var arrayLang: [String] = ["rome","paris","santorini","sydney","zurich","newyork","kyoto","london","istanbul"]
    
    var selectedRow: String{
        return UserDefaults.standard.value(forKey: "currentKey") as? String ?? ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayLang.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        let lng = arrayLang[indexPath.row]
        cell.lblLang.text = lng
        
        if selectedRow == lng {
                  cell.imgSelected.image = kyotoImg
        
        } else{
            cell.imgSelected.image = UIImage(named: "nil")
            
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let lng = arrayLang[indexPath.row]
        UserDefaults.standard.set(lng, forKey: "currentKey")
        
        print("Loaded \(lng)")
        tableVC_lang.reloadData()
    }
}

