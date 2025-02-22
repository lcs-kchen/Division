//
//  ModelView.swift
//  Division
//
//  Created by Haowen Chen on 2025-02-22.
//

import Foundation

class DivisionViewModel {
    
    //Mark: Stored Properties
    var providedDividend: String
    var providedDivsor: String
    var recoverySuggestion: String
    
    //Mark: Computed Properites
    var division: Division? {
        guard let dividend = Int(providedDividend) else {
            recoverySuggestion = "Please enter an integer for the dividend."
            
            return nil
        }
        
        guard let divisor = Int(providedDivsor) else {
            recoverySuggestion = "Please enter an integer for the divisor."
            return nil }
        
        recoverySuggestion = ""
        return Division(dividend: dividend, divisor: divisor)
        
    }
    
    
    //Mark: Initializer
    init(
        providedDividend: String,
        providedDivsor: String,
        recoverySuggestion: String
    ) {
        self.providedDividend = providedDividend
        self.providedDivsor = providedDivsor
        self.recoverySuggestion = recoverySuggestion
    }
}

