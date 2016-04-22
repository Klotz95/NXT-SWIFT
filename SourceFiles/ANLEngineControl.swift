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
        
        // create byte array
        var byteArr: [Byte]
        
        // add information to byteArr
        byteArr = 0x00 + 0x04 + outputPort + powerSetPoint + mode + regulationMode + turnRatio + runState + tachoLimit
        
        // send byte array
        var (error, returnPackage) = brick.sendOtherCommand(byteArr);
        
        return error
    }
    
    public func GetOutputState(outputPort: Byte) -> NSDictionary {
        
    }
    
    public func StopAllEngines() {
        
    }
    
    public func StopEngine() {
        
    }
}