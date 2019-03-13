//
//  ViewController.swift
//  Mr.million
//
//  Created by HsiungWei on 2019/3/7.
//  Copyright © 2019 熊偉. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topicNumber: UILabel!
    @IBOutlet weak var money: UILabel!
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    @IBOutlet weak var btnD: UIButton!
    
    var item = allData
    var Answer:String?
    var num:Int = 10
    var moneyNum:Int = 2000
    var number:[topic]?
    var row:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        run()
        
        topicNumber.text = "機會:\(num)"
        money.text = "累積獎金:\(moneyNum)"
        
        btnA.clipsToBounds = true
        btnA.layer.cornerRadius = 20
        btnB.clipsToBounds = true
        btnB.layer.cornerRadius = 20
        btnC.clipsToBounds = true
        btnC.layer.cornerRadius = 20
        btnD.clipsToBounds = true
        btnD.layer.cornerRadius = 20
        
    }
    
    @IBAction func answer(_ sender: UIButton) {
        
        let ans = sender.titleLabel?.text
        
        if ans! == Answer {
            
            num = num - 1
            topicNumber.text = "機會:\(String(num))"
            moneyNum = moneyNum + 1000
            money.text = "累積獎金:\(String(moneyNum))"
            open()
            
        } else if ans! != Answer {
            num = num - 1
            topicNumber.text = "機會:\(String(num))"
            moneyNum = moneyNum - 500
            money.text = "累積獎金:\(String(moneyNum))"
        }
        
        if moneyNum == 0 {
            money.text = "累積獎金:\(String(moneyNum))"
            popAlert(title: "遊戲結束~你沒錢囉！", message: "你這遜咖！")
        }
        if num == 0 {
            popAlert(title: "恭喜~", message: "共獲得\(String(moneyNum))獎金")
        }
        
    }
    
    func open() {
        
        row = row + 1
        questionText.text = number![row].question
        btnA.setTitle("A:\(number![row].select.A)", for: .normal)
        btnB.setTitle("B:\(number![row].select.B)", for: .normal)
        btnC.setTitle("C:\(number![row].select.C)", for: .normal)
        btnD.setTitle("D:\(number![row].select.D)", for: .normal)
        
        Answer = number![row].answer
        
        print(number![row].question)
        print(row)
        
        
    }
    
    
    func popAlert(title:String,message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = alert.addAction(UIAlertAction(title: "確認", style: .default, handler: {
            (_) in
            
            self.moneyNum = 2000
            self.money.text = "累積獎金:\(self.moneyNum)"
            self.num = 10
            self.topicNumber.text = "機會:\(self.num)"
            self.row = 0
            self.run()
            
            
        }))
        present(alert,animated: true,completion: nil)
    }
    
    
    func run() {
        number = item.shuffled()
        
        for i in 0...(number!.count - 1) {
            
            questionText.text = number![i].question
            btnA.setTitle("A:\(number![i].select.A)", for: .normal)
            btnB.setTitle("B:\(number![i].select.B)", for: .normal)
            btnC.setTitle("C:\(number![i].select.C)", for: .normal)
            btnD.setTitle("D:\(number![i].select.D)", for: .normal)
            print(i)
            Answer = number![i].answer
            
            print(number![i].question)
        }
    }
    
    
    
    
    
    
}

