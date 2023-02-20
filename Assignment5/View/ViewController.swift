//
//  ViewController.swift
//  Assignment5
//
//  Created by Hronek Joseph on 2/19/23.
//

import UIKit

class ViewController: UIViewController {

    var usdInputInt = 0
    var converterLogic = ConverterLogic()
    var poundIsVisible = true
    var euroIsVisible = true
    var yenIsVisible = true
    var pesoIsVisible = true
    var poundConverted = 0
    var euroConverted = 0
    var yenConverted = 0
    var pesoConverted = 0
    
    
    @IBOutlet weak var usdInput: UITextField!
        
    @IBAction func poundChange(_ sender: UISwitch) {
        poundIsVisible = sender.isOn
    }
    
    @IBAction func euroChange(_ sender: UISwitch) {
        euroIsVisible = sender.isOn
    }
    
    @IBAction func yenChange(_ sender: UISwitch) {
        yenIsVisible = sender.isOn
    }
    
    @IBAction func pesoChange(_ sender: UISwitch) {
        pesoIsVisible = sender.isOn
    }
    
    @IBAction func convert(_ sender: UIButton) {
        usdInputInt = Int(usdInput.text!)!
        poundConverted = converterLogic.calculatePound(usdInput)
        euroConverted = converterLogic.calculateEuro(usdInput)
        yenConverted = converterLogic.calculateYen(usdInput)
        pesoConverted = converterLogic.calculatePeso(usdInput)
        self.performSegue(withIdentifier: "toConversion", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConversion" {
            let converterNavigation = segue.destination as! ConversionViewController
            converterNavigation.usdInputInt = usdInputInt
            converterNavigation.poundIsVisible = poundIsVisible
            converterNavigation.euroIsVisible = euroIsVisible
            converterNavigation.yenIsVisible = yenIsVisible
            converterNavigation.pesoIsVisible = pesoIsVisible
            converterNavigation.poundConverted = poundConverted
            converterNavigation.euroConverted = euroConverted
            converterNavigation.yenConverted = yenConverted
            converterNavigation.pesoConverted = pesoConverted
        }
    }
}

