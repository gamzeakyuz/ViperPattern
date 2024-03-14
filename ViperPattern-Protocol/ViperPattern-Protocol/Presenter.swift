//
//  Presenter.swift
//  ViperPattern-Protocol
//
//  Created by Gamze Akyüz on 14.03.2024.
//

import Foundation

//ana protocol
class Presenter : ViewToPresenterProtocol {
    //    taşıyıcı protocol
        var interactor: PresenterToInteractorProtocol?
        var view: PresenterToViewProtocol?
    
    func plus(num1: String, num2: String) {
        interactor?.plus(num1: num1, num2: num2)
    }
    
    func minus(num1: String, num2: String) {
        interactor?.minus(num1: num1, num2: num2)
    }
    
    func divide(num1: String, num2: String) {
        interactor?.divide(num1: num1, num2: num2)
    }
    
    func multiply(num1: String, num2: String) {
        interactor?.multiply(num1: num1, num2: num2)
    }
    
}

//taşıyıcı protocol
extension Presenter : InteractorToPresenterProtocol {
    func presenterDataSend(result: String) {
        view?.viewDataSend(result: result)
    }
}
