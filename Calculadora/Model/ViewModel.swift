//
//  ViewModel.swift
//  Calculadora
//
//  Created by Ainhoa  on 28/4/25.
//

import Foundation
import UIKit

class Model {
    
    var num1 = "0"
    var num2 = "0"
    var operacion = ""
    var cambiarNum = false
    var signo = true
    
    func Model () {
        num1 = "0"
        num2 = "0"
        operacion = ""
        cambiarNum = false
        signo = true
    }
    
    func setOperacion (_ texto : String , _ resultado : UILabel) {
        operacion = texto
        resultado.text = "0"
        cambiarNum = true
    }

    static func setFormat (_ result : Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0 ) {
            return String(format: "%.0f", result)
        }
        else {
            return String(format: "%.5f", result)
        }
    }

    func comprobarSigno(_ signo : Bool , _ cambiarNum : Bool , _ resultado : UILabel) {
        if (signo == false) {
            if (!cambiarNum) {
                num1 = "-" + num1
                resultado.text = num1
            } else {
                num2 = "-" + num2
                resultado.text = num2
            }
        } else {
            if (!cambiarNum) {
                num1 = num1.replacingOccurrences(of: "-", with: "")
                resultado.text = num1
            } else {
                num2 = num2.replacingOccurrences(of: "-", with: "")
                resultado.text = num2
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
}


