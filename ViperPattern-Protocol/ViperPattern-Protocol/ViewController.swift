//
//  ViewController.swift
//  ViperPattern-Protocol
//
//  Created by Gamze Akyüz on 14.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelResult : UILabel!
    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    
//    Ana Protocol
    var presenterObj: ViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelResult.text = "0"
//        bütün protocollerin çalışmasını sağlayan yetkilendirme
        Router.createModule(ref: self)
        
    }
    
    @IBAction func plusButton(_ sender: Any) {
        if let s1 = num1.text, let s2 = num2.text {
            presenterObj?.plus(num1: s1, num2: s2)
        }
    }
    @IBAction func divideButton(_ sender: Any) {
        if let s1 = num1.text, let s2 = num2.text {
            presenterObj?.divide(num1: s1, num2: s2)
        }
    }
    @IBAction func multiplyButton(_ sender: Any) {
        if let s1 = num1.text, let s2 = num2.text {
            presenterObj?.multiply(num1: s1, num2: s2)
        }
    }
    @IBAction func minusButton(_ sender: Any) {
        if let s1 = num1.text, let s2 = num2.text {
            presenterObj?.minus(num1: s1, num2: s2)
        }
    }
    
    @IBAction func textClear(_ sender: Any) {
        num1.text = ""
        num2.text = ""
        labelResult.text = "0"
    }

}

extension ViewController: PresenterToViewProtocol {
    func viewDataSend(result: String) {
        labelResult.text = result
    }
}

