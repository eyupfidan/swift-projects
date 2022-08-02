//
//  ViewController.swift
//  TimerProject
//
//  Created by Eyüp Fidan on 10.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timeLabel.text = "Time \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunction), userInfo: nil, repeats: true)
    }
    @IBAction func printBtn(_ sender: Any) {
        print("Button clicked")
    }
    
    @objc func timeFunction() {
        timeLabel.text = "Time \(counter)"
        counter -= 1
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time's Over"

        }
    }
}

