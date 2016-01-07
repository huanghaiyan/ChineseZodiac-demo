//
//  ViewController.swift
//  ChineseZodiac-demo
//
//  Created by huanghy on 16/1/7.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var zodiacImageView: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()//隐藏键盘
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        
        yearOfBirth.resignFirstResponder()//隐藏键盘
        if let year = Int(yearOfBirth.text!){
            let imageNumber = (year - offset) % 12
            zodiacImageView.image = UIImage(named: String(imageNumber))
        }
        else{
            
        }
    }
    

}

