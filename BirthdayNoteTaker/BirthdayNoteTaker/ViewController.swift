//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Eyüp Fidan on 9.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var birthdayTextfield: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Hafızaya kaydedilen değerleri değişkene aktarıyoruz.
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Değişkene kaydedilen verileri kontrol ediyoruz.
        if let newName = storedName as? String {
            nameLabel.text =  "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
    }

    @IBAction func saveBtn(_ sender: Any) {
        //Textfield verilerini Userdefault sınıfı ile hafızaya kaydediyoruz.
        UserDefaults.standard.set(nameTextfield.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextfield.text, forKey: "birthday")
        
        //Textfield Verilerini Labele Aktarıyoruz
        nameLabel.text = "Name: \(nameTextfield.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextfield.text!)"
    }
    @IBAction func deleteBtn(_ sender: Any) {
        //Hafızaya kaydedilen değerleri değişkene aktarıyoruz.
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Daha önce hafızada veri var mı onu kontrol ediyoruz. Olmayan veriyi silemez.
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
        }
    }
    
}

