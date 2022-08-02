//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Nurşah on 30.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var MyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeButtonClicked(_ sender: Any) {
        ImageView.image = UIImage(named: "pera-2")        
    }
    
}

