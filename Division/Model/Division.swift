//
//  Model.swift
//  Division
//
//  Created by Haowen Chen on 2025-02-22.
//

import Foundation

struct Division {
    //Mark: Stored Properties
    var dividend: Int
    var divisor: Int
    
    
    
    //Mark: Computed Properties
    var quotient: Int {
        return dividend / divisor
    }
    
    var remainder: Int {
        return dividend % divisor
    }
}

