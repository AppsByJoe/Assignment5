//
//  ConversionViewController.swift
//  Assignment5
//
//  Created by Hronek Joseph on 2/19/23.
//

import UIKit

class ConversionViewController: UIViewController {
    
    var usdInputInt = 0
    var poundIsVisible = true
    var euroIsVisible = true
    var yenIsVisible = true
    var pesoIsVisible = true
    var poundConverted = ""
    var euroConverted = ""
    var yenConverted = ""
    var pesoConverted = ""
    
    @IBOutlet weak var amountInUsd: UILabel!
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var amountInPound: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var amountInEuro: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var amountInYen: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var amountInPeso: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        poundLabel.isHidden = !poundIsVisible
        euroLabel.isHidden = !euroIsVisible
        yenLabel.isHidden = !yenIsVisible
        pesoLabel.isHidden = !pesoIsVisible
        amountInPound.isHidden = !poundIsVisible
        amountInEuro.isHidden = !euroIsVisible
        amountInYen.isHidden = !yenIsVisible
        amountInPeso.isHidden = !pesoIsVisible
        amountInUsd.text = "$\(usdInputInt)"
        amountInPound.text = "£\(poundConverted)"
        amountInEuro.text = "€\(euroConverted)"
        amountInYen.text = "¥\(yenConverted)"
        amountInPeso.text = "MX$\(pesoConverted)"
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
