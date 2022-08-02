//
//  ViewController.swift
//  SegueApp
//
//  Created by Eyüp Fidan on 9.12.2021.
//

import UIKit

class ViewController: UIViewController {
    var userName = ""
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad Function Called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear Function Called")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear Function Called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear Function Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear Function Called")

    }
    @IBAction func nextBtn(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

