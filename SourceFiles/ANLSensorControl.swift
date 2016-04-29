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
        byteArr[0] = 0x00
        byteArr[1] = 0x07
        byteArr[2] = inputPort
        
        // send byte array
        var (error, returnPagacke) = brick.sendOtherCommand(byteArr);
        
        if error != nil {
            return nil
        }
        
        var dictionary: [String:Any]
        dictionary["InputPort"] = returnPackage[0]
        dictionary["Valid"] = returnPackage[1]
        dictionary["Calibrated"] = returnPackage[2]
        dictionary["SensorType"] = returnPackage[3]
        dictionary["SensorMode"] = returnPackage[4]
        dictionary["RawADValue"] = returnPackage[5]
        dictionary["NormalizedADValue"] = returnPackage[6]
        dictionary["ScaledValue"] = returnPackage[7]
        dictionary["CalibratedValue"] = returnPackage[8]
        
        return dictionary
    }
}