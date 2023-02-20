//
//  ViewController.swift
//  Assignment5
//
//  Created by Hronek Joseph on 2/19/23.
//

import UIKit

class ViewController: UIViewController {

    // var converterLogic = ConverterLogic()
    var poundIsVisible = true
    var euroIsVisible = true
    var yenIsVisible = true
    var pesoIsVisible = true
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConversion" {
            let converterNavigation = segue.destination as! ConversionViewController
            converterNavigation.poundIsVisible = poundIsVisible
            converterNavigation.euroIsVisible = euroIsVisible
            converterNavigation.yenIsVisible = yenIsVisible
            converterNavigation.pesoIsVisible = pesoIsVisible
        }
    }
}

