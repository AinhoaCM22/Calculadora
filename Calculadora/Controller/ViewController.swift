//
//  ViewController.swift
//  Calculadora
//
//  Created by Ainhoa  on 14/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultado: UILabel!
    var model : Model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultado.text = "0"
    }
    
   
        
        @IBAction func division(_ sender: Any) {
            model.setOperacion("/" , resultado )
        }
        
        @IBAction func multiplicacion(_ sender: Any) {
            model.setOperacion("*" , resultado )
        }
        
        @IBAction func restar(_ sender: Any) {
            model.setOperacion("-" , resultado )
        }
        
        @IBAction func sumar(_ sender: Any) {
            model.setOperacion("+" , resultado )
        }
        
    
        @IBAction func igual(_ sender: Any) {
            var result : Double
            var primerNumero = Double(model.num1.replacingOccurrences(of: ",", with: ".")) ?? 0.0
            var segundoNumero = Double(model.num2.replacingOccurrences(of: ",", with: ".")) ?? 0.0
          
            
            switch (model.operacion) {
            case "/" :
                result = (primerNumero / segundoNumero)
                resultado.text = Model.setFormat(result)
                model.num1 = Model.setFormat(result)
                model.num2 = ""
                model.operacion = ""
                break
            case "*" :
                result = primerNumero * segundoNumero
                resultado.text = Model.setFormat(result)
                model.num1 = Model.setFormat(result)
                model.num2 = ""
                model.operacion = ""
                break
            case "+" :
                result = (primerNumero + segundoNumero)
                resultado.text = Model.setFormat(result)
                model.num1 = Model.setFormat(result)
                model.num2 = ""
                model.operacion = ""
                break
            case "-" :
                result = primerNumero - segundoNumero
                resultado.text = Model.setFormat(result)
                model.num1 = Model.setFormat(result)
                model.num2 = ""
                model.operacion = ""
                break
            case "%" :
                result = primerNumero * 0.01
                resultado.text = Model.setFormat(result)
                model.num1 = Model.setFormat(result)
                model.num2 = ""
                model.operacion = ""
                break
            default :
                break
            }
            model.cambiarNum = false
        }
        
        @IBAction func porcentaje(_ sender: Any) {
            model.setOperacion("%" , resultado)
        }
        
        @IBAction func cambiarSigno(_ sender: Any) {
            if(model.signo){
                model.signo = false
            } else {
                model.signo = true
            }
            model.comprobarSigno(model.signo, model.cambiarNum , resultado)
        }
        
      
        
    @IBAction func borrar(_ sender: Any) {
        model.num1 = ""
        model.num2 = ""
        model.operacion = ""
        resultado.text = "0"
        model.cambiarNum = false
        }
    
        @IBAction func addNueve(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "9")
        }
        
        
        @IBAction func addOcho(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "8")
        }
        
        @IBAction func addSiete(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "7")
        }
        
        @IBAction func addSeis(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "6")
        }
        
        @IBAction func addCinco(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "5")
        }
        
        @IBAction func addCuatro(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "4")
        }
        
        @IBAction func addTres(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "3")
        }
        
        @IBAction func addDos(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "2")
        }
        
        
        @IBAction func addUno(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "1")
        }
        
        
        @IBAction func addCero(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, "0")
        }
        
        @IBAction func addComa(_ sender: Any) {
            resultado.text = model.setnum(model.cambiarNum, ",")
        }
}
