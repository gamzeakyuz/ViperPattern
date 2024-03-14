//
//  Interactor.swift
//  ViperPattern-Protocol
//
//  Created by Gamze Akyüz on 14.03.2024.
//

import Foundation

//Ana protocol

class Interactor : PresenterToInteractorProtocol {
    
//    taşıyıcı protokol
    
    var presenter: InteractorToPresenterProtocol?
    
    func plus(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
            let plus = s1 + s2
            presenter?.presenterDataSend(result: String(plus))
        }
    }
    
    func minus(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
            let minus = s1 - s2
            presenter?.presenterDataSend(result: String(minus))
        }
    }
    
    func divide(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
            let divide = s1 / s2
            presenter?.presenterDataSend(result: String(divide))
        }
    }
    
    func multiply(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
            let multiply = s1 * s2
            presenter?.presenterDataSend(result: String(multiply))
        }
    }
    

    
    
}
