//
//  Power.swift
//  MVVMAndFreeformInput
//
//  Created by Julien Hwang on 22/2/2025.
//

import Foundation

struct Power: Identifiable {
    
    //MARK: Stored properties
    let id = UUID()
    
    var base: Double
    
    var exponent: Int
    
    
  
    var result: Double {
        
        var solution = 1.0
        
        if exponent > 0 {
            
            // Start by making the solution equal to 1
            
            
            // Repeatedly multiply the base by itself
            // as many more times as needed
            for _ in 1...exponent {
                solution *= base
            }
            
            // Return the solution
            
        } else {
            
            var negativePower = 1
            negativePower = exponent * -1
            solution = base
            
            for _ in 0...negativePower {
                solution /= base
            }
            
        }
        return solution
    }
}
