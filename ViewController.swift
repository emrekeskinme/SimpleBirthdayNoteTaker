//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Emre Keskin on 23.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtBD: UITextField!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblBD: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBD = UserDefaults.standard.object(forKey: "BD")
        
        if let newName = storedName as? String{
            lblName.text = "Name: \(newName)"
        }
        
        if let newBD = storedBD as? String {
            lblBD.text = "Birthday: \(newBD)"
        }
        
    }
    
    
    @IBAction func btnSave(_ sender: Any) {
        
        UserDefaults.standard.set(txtName.text, forKey: "Name")
        UserDefaults.standard.set(txtBD.text, forKey: "BD")
        
        lblName.text = "Name: \(txtName.text!)"
        lblBD.text = "Birthday: \(txtBD.text!)"
    }

    @IBAction func btnDelete(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBD = UserDefaults.standard.object(forKey: "BD")
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "Name")
            lblName.text = "Name: "
        }
        
        if (storedBD as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "BD")
            lblBD.text = "Birthday: "
        }
    }
}

