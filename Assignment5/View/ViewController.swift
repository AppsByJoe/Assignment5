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
    var poundConverted = ""
    var euroConverted = ""
    var yenConverted = ""
    var pesoConverted = ""
    
    
    @IBAction func inputEntered(_ sender: UITextField) {
        if !validationSuccessful(usdInput.text!) {
            let alert = UIAlertController(title: "Input Validation Error", message: "Please enter an Integer value.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            usdInput.text = ""
        }
    }
    
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
    
    @IBAction func convert(_ sender: UIButton) throws {
        usdInputInt = Int(usdInput.text!)!
        poundConverted = converterLogic.calculatePound(usdInputInt)
        euroConverted = converterLogic.calculateEuro(usdInputInt)
        yenConverted = converterLogic.calculateYen(usdInputInt)
        pesoConverted = converterLogic.calculatePeso(usdInputInt)
        self.performSegue(withIdentifier: "toConversion", sender: self)
        
//        if validationSuccessful(usdInput.text!) {
//            usdInputInt = Int(usdInput.text!)!
//            poundConverted = converterLogic.calculatePound(usdInputInt)
//            euroConverted = converterLogic.calculateEuro(usdInputInt)
//            yenConverted = converterLogic.calculateYen(usdInputInt)
//            pesoConverted = converterLogic.calculatePeso(usdInputInt)
//            self.performSegue(withIdentifier: "toConversion", sender: self)
//        } else {
//            let alert = UIAlertController(title: "Input Validation Error", message: "Please enter an Integer value.", preferredStyle: UIAlertController.Style.alert)
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//            usdInput.text = ""
//        }
        
//        do {
//            usdInputInt = try Int(usdInput.text!)!
//            poundConverted = converterLogic.calculatePound(usdInputInt)
//            euroConverted = converterLogic.calculateEuro(usdInputInt)
//            yenConverted = converterLogic.calculateYen(usdInputInt)
//            pesoConverted = converterLogic.calculatePeso(usdInputInt)
//            self.performSegue(withIdentifier: "toConversion", sender: self)
//        } catch {
//            let alert = UIAlertController(title: "Input Validation Error", message: "Please enter an Integer value.", preferredStyle: UIAlertController.Style.alert)
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//            usdInput.text = ""
//        }
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
    
    func validationSuccessful (_ userInput: String) -> Bool {
        return Int(userInput) != nil
    }
}

