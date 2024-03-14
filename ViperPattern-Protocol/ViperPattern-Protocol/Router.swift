//
//  Router.swift
//  ViperPattern-Protocol
//
//  Created by Gamze Akyüz on 14.03.2024.
//

import Foundation


class Router: PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        //View sınıfı değişkeni
        ref.presenterObj = presenter //Vİew sınıfındaki değişkene yetki verme
        
        //Presenter sınıfı değişkenleri
        ref.presenterObj?.interactor = Interactor() // presenter sınıfı içindeki değişkene yetki verme
        ref.presenterObj?.view = ref
        
        //Interactor sınıfı değişkeni
        ref.presenterObj?.interactor?.presenter = presenter //interactor sınıfı içindeki değişkene yetki verme
    }
}
