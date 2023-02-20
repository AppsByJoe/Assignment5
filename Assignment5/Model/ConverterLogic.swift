//
//  ConverterLogic.swift
//  Assignment5
//
//  Created by Hronek Joseph on 2/19/23.
//

import Foundation

struct ConverterLogic {
    var poundConverted = ""
    var euroConverted = ""
    var yenConverted = ""
    var pesoConverted = ""
    
    mutating func calculatePound(_ usdAmount : Int) -> String {
        poundConverted = String(format: "%.2f", Double(usdAmount) * 0.83)
        return poundConverted
    }
    
    mutating func calculateEuro(_ usdAmount : Int) -> String {
        euroConverted = String(format: "%.2f", Double(usdAmount) * 0.94)
        return euroConverted
    }
    
    mutating func calculateYen(_ usdAmount : Int) -> String {
        yenConverted = String(format: "%.2f", Double(usdAmount) * 134.49)
        return yenConverted
    }
    
    mutating func calculatePeso(_ usdAmount : Int) -> String {
        pesoConverted = String(format: "%.2f", Double(usdAmount) * 18.38)
        return pesoConverted
    }
}
