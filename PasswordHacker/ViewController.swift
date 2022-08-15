//
//  ViewController.swift
//  PasswordHacker
//
//  Created by 原田摩利奈 on 8/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel1: UILabel!
       @IBOutlet var resultLabel2: UILabel!
       @IBOutlet var resultLabel3: UILabel!
       @IBOutlet var resultLabel4: UILabel!
       
       @IBOutlet var countLabel: UILabel!
       
       var password = Int.random(in: 0...9999)
       
       var tapCount: Int = 0
       
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
       
       @IBAction func start(){
           tapCount = tapCount + 1
           
           print(password)

        
           for i in 0...9999 {
               countLabel.text = String(i)
               RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
               
               
               if i == password {
                   var digits = [Int]()
                   
                   for _ in 0...3 {
                       digits.append(password % 10)
                       password = password / 10
                       
                   }
                   
                   resultLabel4.text = String(digits[0])
                   resultLabel3.text = String(digits[1])
                   resultLabel2.text = String(digits[2])
                   resultLabel1.text = String(digits[3])
                   countLabel.text = "解析完了"
                   
               }
           }
           
       }
       
       @IBAction func resetButton(){
           tapCount = 0
           
           password = Int.random(in: 0...9999)
           countLabel.text = "STARTを押して解析開始"
           
           resultLabel4.text = "0"
           resultLabel3.text = "0"
           resultLabel2.text = "0"
           resultLabel1.text = "0"
           
       }
       
   }
