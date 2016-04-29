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
    
    public func GetInputValues(inputPort: Byte) -> [String:Any] {
        
        // create byte array
        var byteArr: [Byte]
        
        // add information to byteArr
        byteArr[0] = 0x00
        byteArr[1] = 0x07
        byteArr[2] = inputPort
        
        // send byte array
        var (error, returnPackage) = brick.sendOtherCommand(byteArr);
        
        if error != nil {
            return error
        }
        
        var dictionary: [String:Any]
        dictionary["InputPort"] = returnPackage[0] // Byte
        dictionary["Valid"] = returnPackage[1] // Boolean
        dictionary["Calibrated"] = returnPackage[2] // Boolean
        dictionary["SensorType"] = returnPackage[3] // Byte
        dictionary["SensorMode"] = returnPackage[4] // Byte
        dictionary["RawADValue"] = returnPackage[5,6] // String
        dictionary["NormalizedADValue"] = returnPackage[7,8] // String
        dictionary["ScaledValue"] = returnPackage[9,10] // String
        dictionary["CalibratedValue"] = returnPackage[11,12] // String
        
        return dictionary
    }
}