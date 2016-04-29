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
        byteArr[0] = 0x00
        byteArr[1] = 0x04
        byteArr[2] = outputPort
        byteArr[3] = powerSetPoint
        byteArr[4] = mode
        byteArr[5] = regulationMode
        byteArr[6] = turnRatio
        byteArr[7] = runState
        byteArr[8] = tachoLimit
        
        // send byte array
        var (error, returnPackage) = brick.sendOtherCommand(byteArr);
        
        return error
    }
    
    public func GetOutputState(outputPort: Byte) -> NSDictionary {
        
        // create byte array
        var byteArr: [Byte]
        
        // add information to byteArr
        byteArr[0] = 0x00
        byteArr[1] = 0x06
        byteArr[2] = outputPort
        
        // send byte array
        var (error, returnPackage) = brick.sendOtherCommand(byteArr);
        
        return returnPackage
        
    }
    
    public func StopAllEngines() {
        
    }
    
    public func StopEngine() {
        
    }
}