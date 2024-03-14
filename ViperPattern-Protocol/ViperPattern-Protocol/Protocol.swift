//
//  Protocol.swift
//  ViperPattern-Protocol
//
//  Created by Gamze Akyüz on 14.03.2024.
//

import Foundation

//Ana protocol

protocol PresenterToInteractorProtocol {
    
    var presenter: InteractorToPresenterProtocol? {get set}
    
    func plus(num1:String, num2: String)
    func minus(num1:String, num2: String)
    func divide(num1:String, num2: String)
    func multiply(num1:String, num2: String)
    
}

protocol ViewToPresenterProtocol {
    
    var interactor: PresenterToInteractorProtocol? {get set}
    var view: PresenterToViewProtocol? {get set}
    
    func plus(num1:String, num2: String)
    func minus(num1:String, num2: String)
    func divide(num1:String, num2: String)
    func multiply(num1:String, num2: String)
    
}

//taşıyıcı protocol

protocol InteractorToPresenterProtocol{
    
    func presenterDataSend(result: String)
    
}
protocol PresenterToViewProtocol {
    func viewDataSend(result: String)
}

protocol PresenterToRouterProtocol {
    static func createModule(ref: ViewController)
}

