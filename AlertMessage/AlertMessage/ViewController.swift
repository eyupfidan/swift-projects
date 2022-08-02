//
//  ViewController.swift
//  AlertMessage
//
//  Created by Eyüp Fidan on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        /*
         
        
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title:"OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //Button Clicked
            print("clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
         */
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Hata", messageInput: "Kullanıcı adı boş olamaz")
        }else if (passwordText.text == "" || password2Text.text == "")
        {
            makeAlert(titleInput: "Hata", messageInput: "Parola alanları boş olamaz")
        }
        else if (passwordText.text != password2Text.text) {
            makeAlert(titleInput: "Hata", messageInput: "Parolalar eşleşmiyor")
        }
        else {
            makeAlert(titleInput: "Hata", messageInput: "Kayıt başarılı")
        }
    }
    
    func makeAlert(titleInput : String , messageInput : String) {
        let alert = UIAlertController(title: messageInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

