//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Eyüp Fidan on 8.12.2021.
//

import UIKit

class ViewController: UIViewController {
    var myLabel = UILabel()
    var myButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 50 / 2, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
        
        myButton.setTitle("Select My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.3 - 13, y: height * 0.7, width: 200, height: 100)
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
    }

   @objc func myAction() {
       myLabel.text = "Changed Text"
   }
}

