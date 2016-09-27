//
//  ViewController.swift
//  Timer
//
//  Created by Salomon Pluviose on 9/27/16.
//  Copyright © 2016 Salomon Pluviose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    @IBOutlet weak var num: UILabel!

    @IBAction func startTimer(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    func processTimer() {
        if var runningTime = Int(num.text!) {
            runningTime = runningTime + 1
            num.text = "\(runningTime)"
        }
    }
    
    @IBAction func stopTimer(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func resetClock(_ sender: AnyObject) {
        if var runningTime = Int(num.text!) {
            runningTime = 0
            num.text = "\(runningTime)"
        }
    }
    
    @IBAction func addTenSec(_ sender: AnyObject) {
        if var runningTime = Int(num.text!) {
            runningTime = runningTime + 10
            num.text = "\(runningTime)"
        }
    }
    
    @IBAction func minusTen(_ sender: AnyObject) {
        if var runningTime = Int(num.text!) {
            if runningTime > 10 {
                runningTime = runningTime - 10
                num.text = "\(runningTime)"
            } else {
                num.text = "\(runningTime)"
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

