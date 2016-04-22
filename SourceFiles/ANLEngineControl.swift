//
//  ANLEngineControl.swift
//  
//
//  Created by Anton Wieprecht on 22.04.16.
//
//

import Foundation

class ANLEngineControl {
    
    // Variables
    ANLBrickCommunication brick
    
    public func ANLEngineControl(currentBrick: ANLBrickCommunication) {
        brick = currentBrick
    }
    
    public func SetOutputState(outputPort: Byte, powerSetPoint: Byte, mode: Byte, regulationMode: UByte, turnRatio: SByte, runState: UByte, tachoLimit: ULong) -> NSError {
        
    }
    
    public func GetOutputState(outputPort: Byte) -> NSDictionary {
        
    }
    
    public func StopAllEngines() {
        
    }
    
    public func StopEngine() {
        
    }
}