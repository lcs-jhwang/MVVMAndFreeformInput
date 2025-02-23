//
//  Power.swift
//  MVVMAndFreeformInput
//
//  Created by Julien Hwang on 22/2/2025.
//

import Foundation

struct Power {
    
    //MARK: Stored properties
    var base: Double
    
    var exponent: Int
    
    
    // MARK: Computed properties
    
    // A power is simply a shorter way of expressing
    // repeated multiplication.
    //
    // e.g.: 3^2
    //       = 3 * 3
    //       = 9
    //
    // The base, 3, mutiplied by itself twice, resulting in 9
    //
    // This could also be expressed as:
    //
    // e.g.: 3^2
    //       = 1 * 3 * 3
    //       = 9
    //
    // We will implement code that mimics this second example.
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
