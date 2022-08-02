//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Eyüp Fidan on 9.12.2021.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var segueNameText: UILabel!
    
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segueNameText.text = myName
    }
    


}
