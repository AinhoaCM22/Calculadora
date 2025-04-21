//
//  ViewController.swift
//  Calculadora
//
//  Created by Ainhoa  on 14/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    var num1 = "0"
    var num2 = "0"
    var operacion = ""
    var cambiarNum = false
    var signo = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultado.text = "0"
    }
    
    func setOperacion (_ texto : String) {
        operacion = texto
        resultado.text = "0"
        cambiarNum = true
    }
    func comprobarSigno(_ signo : Bool , _ cambiarNum : Bool) {
        if (!signo) {
            if (!cambiarNum) {
                num1 = "-" + num1
            } else {
                num2 = "-" + num2
            }
        } else {
            if (!cambiarNum) {
                num1 = num1.replacingOccurrences(of: "-", with: "")
            } else {
                num2 = num2.replacingOccurrences(of: "-", with: "")
            }
        }
    }
        
        func setnum (_ cambiarNum : Bool , _ num : String) {
            if(!cambiarNum) {
                if (num1 == "0"){
                    num1 = num
                } else {
                    num1 = num1 + num
                    resultado.text = num1
                }
            } else {
                if (num2 == "0"){
                    num2 = num
                } else {
                    num2 = num2 + num
                    resultado.text = num2
                }
            }
            
        }
        
        @IBAction func division(_ sender: Any) {
            setOperacion("/")
        }
        
        @IBAction func multiplicacion(_ sender: Any) {
            setOperacion("*")
        }
        
        @IBAction func restar(_ sender: Any) {
            setOperacion("-")
        }
        
        @IBAction func sumar(_ sender: Any) {
            setOperacion("+")
        }
        
        @IBAction func igual(_ sender: Any) {
            var result = ""
            var primerNumero = Double(num1.replacingOccurrences(of: ",", with: ".")) ?? 0.0
            var segundoNumero = Double(num2.replacingOccurrences(of: ",", with: ".")) ?? 0.0
            
            switch (operacion) {
            case "/" :
                result = " \(primerNumero / segundoNumero) "
                resultado.text = result
                num1 = result
                num2 = ""
                operacion = ""
                break
            case "*" :
                result = " \(primerNumero * segundoNumero)"
                resultado.text = result
                num1 = result
                num2 = ""
                operacion = ""
                break
            case "+" :
                result = "\(primerNumero + segundoNumero)"
                resultado.text = result
                num1 = result
                num2 = ""
                operacion = ""
                break
            case "-" :
                result = "\(primerNumero - segundoNumero)"
                resultado.text = result
                num1 = result
                num2 = ""
                operacion = ""
                break
            case "%" :
                result = "\(primerNumero * 0.01)"
                resultado.text = result
                num1 = result
                num2 = ""
                operacion = ""
                break
            default :
                break
            }
            cambiarNum = false
        }
        
        @IBAction func porcentaje(_ sender: Any) {
            setOperacion("%")
        }
        
        @IBAction func cambiarSigno(_ sender: Any) {
            if(signo){
                signo = false
            } else {
                signo = true
            }
            comprobarSigno(signo, cambiarNum)
        }
        
      
        
        @IBAction func borrar(_ sender: Any) {
          num1 = ""
          num2 = ""
          operacion = ""
          resultado.text = "0"
          cambiarNum = false
        }
    
        @IBAction func addNueve(_ sender: Any) {
            setnum(cambiarNum, "9")
        }
        
        
        @IBAction func addOcho(_ sender: Any) {
            setnum(cambiarNum, "8")
        }
        
        @IBAction func addSiete(_ sender: Any) {
            setnum(cambiarNum, "7")
        }
        
        @IBAction func addSeis(_ sender: Any) {
            setnum(cambiarNum, "6")
        }
        
        @IBAction func addCinco(_ sender: Any) {
            setnum(cambiarNum, "5")
        }
        
        @IBAction func addCuatro(_ sender: Any) {
            setnum(cambiarNum, "4")
        }
        
        @IBAction func addTres(_ sender: Any) {
            setnum(cambiarNum, "3")
        }
        
        @IBAction func addDos(_ sender: Any) {
            setnum(cambiarNum, "2")
        }
        
        
        @IBAction func addUno(_ sender: Any) {
            setnum(cambiarNum, "1")
        }
        
        
        @IBAction func addCero(_ sender: Any) {
            setnum(cambiarNum, "0")
        }
        
        @IBAction func addComa(_ sender: Any) {
            setnum(cambiarNum, ",")
        }
}
