//
//  Behavior.swift
//  oyster
//
//  Created by Jasen Henderson on 3/29/17.
//  Copyright © 2017 Otter. All rights reserved.
//

import UIKit

// this is an attempt to create a class that defines the attributes of a target behavior 

class TargetBehavior {
    
    
    var studentsNameBehavior : String
    var targetBehavior : String
    var targetBehaviorCount : Int
    
  
    
    
    
    init?(targetBehavior: String, targetBehaviorCount: Int, studentsNameBehavior : String) {
        
        if targetBehavior.isEmpty {
            return nil
        }
        
        self.targetBehavior = targetBehavior
        self.targetBehaviorCount = targetBehaviorCount
        self.studentsNameBehavior = studentsNameBehavior
        
       
        
        
        
    }
    
    
    
}
