//
//  ViewController.swift
//  17-sf-ios-calc
//
//  Created by Сергей Поликарпов on 27.02.2023.
//

import UIKit


//enum action {
//    case addTen
//    case addHalf
//}

class ViewController: UIViewController {
    var result:Int = 0
    var halfFlag:Bool = false
    var halfStep:Int = 0
    var digitOnLabel:Int = 0

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1click(_ sender: Any) {
        addCharToResult(char: 1)
    }
    @IBAction func button2click(_ sender: Any) {
        addCharToResult(char: 2)
    }
    @IBAction func button3click(_ sender: Any) {
        addCharToResult(char: 3)
    }
    @IBAction func button4click(_ sender: Any) {
        addCharToResult(char: 4)
    }
    @IBAction func button5click(_ sender: Any) {
        addCharToResult(char: 5)
    }
    @IBAction func button6click(_ sender: Any) {
        addCharToResult(char: 6)
    }
    @IBAction func button7click(_ sender: Any) {
        addCharToResult(char: 7)
    }
    @IBAction func button8click(_ sender: Any) {
        addCharToResult(char: 8)
    }
    @IBAction func button9click(_ sender: Any) {
        addCharToResult(char: 9)
    }
    @IBAction func button0click(_ sender: Any) {
        addCharToResult(char: 0)
    }
    @IBAction func buttonDotClick(_ sender: Any) {
        addCharToResult(char: 99)
    }
    
    @IBAction func buttonDevideClick(_ sender: Any) {
    }
    @IBAction func buttonEqualClick(_ sender: Any) {
    }
    @IBAction func buttonChangePlusMinusClick(_ sender: Any) {
    }
    @IBAction func buttonACClick(_ sender: Any) {
    }
    @IBAction func buttonPercenClick(_ sender: Any) {
    }
    @IBAction func buttonMultipuleClick(_ sender: Any) {
    }
    @IBAction func buttonPlusClick(_ sender: Any) {
    }
    @IBAction func buttonMinusClick(_ sender: Any) {
    }
    
    
    func addCharToResult(char: Int) {
        if (char == 99) {
            halfFlag = true
        } else if (halfFlag == false) {
            result = result * 10 + char
        } else {
            result = result * 10 + char
            halfStep = halfStep + 1
            
        }
        resultLabel.text = String(Double(result) / pow(Double(10),Double(halfStep)))
    }

}

