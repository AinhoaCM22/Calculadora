//
//  ViewController.swift
//  Calculadora
//
//  Created by Ainhoa  on 14/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    var model : Model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = "0"
    }
    
        @IBAction func divide(_ sender: Any) {
            model.setOperation("/" , result )
        }
        
        @IBAction func multiply(_ sender: Any) {
            model.setOperation("*" , result )
        }
        
        @IBAction func subtract(_ sender: Any) {
            model.setOperation("-" , result )
        }
        
        @IBAction func add(_ sender: Any) {
            model.setOperation("+" , result )
        }
        
    
        @IBAction func equal(_ sender: Any) {
            result.text = model.equal()
        }
        
        @IBAction func percentage(_ sender: Any) {
            model.setOperation("%" , result)
        }
        
        @IBAction func changesign(_ sender: Any) {
            if(model.sign){
                model.sign = false
            } else {
                model.sign = true
            }
            model.checkSign(model.sign, model.changeNum , result)
        }
    
    @IBAction func erase(_ sender: Any) {
        model.erase()
        result.text = "0"
        }
    
        @IBAction func addNine(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "9")
        }
        
        
        @IBAction func addEight(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "8")
        }
        
        @IBAction func addSeven(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "7")
        }
        
        @IBAction func addSix(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "6")
        }
        
        @IBAction func addFive(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "5")
        }
        
        @IBAction func addFour(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "4")
        }
        
        @IBAction func addThree(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "3")
        }
        
        @IBAction func addTwo(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "2")
        }
        
        
        @IBAction func addOne(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "1")
        }
        
        
        @IBAction func addZero(_ sender: Any) {
            result.text = model.setnum(model.changeNum, "0")
        }
        
        @IBAction func addComa(_ sender: Any) {
            result.text = model.setnum(model.changeNum, ",")
        }
}
