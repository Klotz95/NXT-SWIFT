//
//  ANLSensorControl.swift
//  
//
//  Created by Anton Wieprecht on 22.04.16.
//
//

import Foundation

class ANLSensorControl {
    
    // Variables
    ANLBrickCommunication brick
    
    public func ANLSensorControl(currentBrick: ANLBrickCommunication) {
        brick = currentBrick
    }
    
    public func GetInputValues(inputPort: Byte) -> NSDictionary {
        
        // create byte array
        var byteArr: [Byte]
        
        // add information to byteArr
        byteArr = 0x00 + 0x07 + inputPort
        
        // send byte array
        var (error, returnPagacke) = brick.sendOtherCommand(byteArr);
        
        return returnPagacke
    }
}