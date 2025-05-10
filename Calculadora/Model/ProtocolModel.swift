//
//  ProtocolModel.swift
//  Calculadora
//
//  Created by Ainhoa  on 5/5/25.
//

import Foundation
import UIKit

protocol ProtocolModel {
    func equal() -> String
    func setOperation (_ text : String , _ result : UILabel)
    func erase()
}
