//
//  ViewController.swift
//  Basic Calculator
//
//  Created by Nurşah on 2.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func sumBtn(_ sender: Any) {
        if let firstText = Int(firstNumber.text!)
        {
            if let secondText = Int(secondNumber.text!) {
                let result = firstText + secondText
                resultText.text = String(result)
            }
        }
    }
    @IBAction func extBtn(_ sender: Any) {
        if let firstText = Int(firstNumber.text!)
        {
            if let secondText = Int(secondNumber.text!) {
                let result = firstText - secondText
                resultText.text = String(result)
            }
        }
    }
    @IBAction func multBtn(_ sender: Any) {
        if let firstText = Int(firstNumber.text!)
        {
            if let secondText = Int(secondNumber.text!) {
                let result = firstText * secondText
                resultText.text = String(result)
            }
        }
    }
    @IBAction func divBtn(_ sender: Any) {
        if let firstText = Int(firstNumber.text!)
        {
            if let secondText = Int(secondNumber.text!) {
                let result = firstText / secondText
                resultText.text = String(result)
            }
        }
    }
    

}

