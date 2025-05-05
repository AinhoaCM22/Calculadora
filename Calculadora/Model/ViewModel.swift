//
//  ViewModel.swift
//  Calculadora
//
//  Created by Ainhoa  on 28/4/25.
//

import Foundation
import UIKit

class Model : ProtocolModel {
    
    var num1 = "0"
    var num2 = "0"
    var operation = ""
    var changeNum = false
    var sign = true
    var resultOperation : Double = 0.0
    
    func Model () {
        num1 = "0"
        num2 = "0"
        operation = ""
        changeNum = false
        sign = true
    }
    
    func erase () {
        num1 = "0"
        num2 = "0"
        operation = ""
        changeNum = false
        sign = true
    }
    
    func setOperation (_ text : String , _ result : UILabel) {
        operation = text
        result.text = "0"
        changeNum = true
    }
    
    func setFormat (_ result : Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0 ) {
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.5f", result)
        }
    }
    
    func checkSign(_ sign : Bool , _ changeNum : Bool , _ result : UILabel) {
        if (sign == false) {
            if (!changeNum) {
                num1 = "-" + num1
                result.text = num1
            } else {
                num2 = "-" + num2
                result.text = num2
            }
        } else {
            if (!changeNum) {
                num1 = num1.replacingOccurrences(of: "-", with: "")
                result.text = num1
            } else {
                num2 = num2.replacingOccurrences(of: "-", with: "")
                result.text = num2
            }
        }
    }
    
    func setnum (_ cambiarNum : Bool , _ num : String) -> String {
        if(!cambiarNum) {
            if (num1 == "0"){
                num1 = num
                return num1
            } else {
                num1 = num1 + num
                return num1
            }
        } else {
            if (num2 == "0"){
                num2 = num
                return num2
            } else {
                num2 = num2 + num
                return num2
            }
        }
        
    }
    
    func equal () -> String {
        var firstNumber = Double(num1.replacingOccurrences(of: ",", with: ".")) ?? 0.0
        var secondNumber = Double(num2.replacingOccurrences(of: ",", with: ".")) ?? 0.0
        
        
        switch (operation) {
        case "/" :
            resultOperation = (firstNumber / secondNumber)
            num1 = setFormat(resultOperation)
            num2 = ""
            operation = ""
            break
        case "*" :
            resultOperation = firstNumber * secondNumber
            num1 = setFormat(resultOperation)
            num2 = ""
            operation = ""
            break
        case "+" :
            resultOperation = (firstNumber + secondNumber)
            num1 = setFormat(resultOperation)
            num2 = ""
            operation = ""
            break
        case "-" :
            resultOperation = firstNumber - secondNumber
            num1 = setFormat(resultOperation)
            num2 = ""
            operation = ""
            break
        case "%" :
            resultOperation = firstNumber * 0.01
            num1 = setFormat(resultOperation)
            num2 = ""
            operation = ""
            break
        default :
            break
        }
        changeNum = false
        return setFormat(resultOperation)
    }
}


