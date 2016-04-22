//
//  ANLenums.swift
//
//
//  Created by Anton Wieprecht on 22.04.16.
//
//

import Foundation

enum ANLSensorMode: Byte {
    case RAWMODE = 0x00
    case BOOLEANMODE = 0x20
    case TRANSITIONCNTMODE = 0x40
    case PERIODCOUNTERMODE = 0x60
    case PCTFULLSCALEMODE = 0x80
    case CELCIUSMODE = 0xA0
    case FAHRENHEITMODE = 0xC0
    case ANGLESTEPSMODE = 0xE0
    case SLOPEMASK = 0x1F
    case MODEMASK = 0xE0
}

enum ANLRegulationMode: Byte {
    case REGULATION_MODE_IDLE = 0x00
    case REGULATION_MODE_MOTOR_SPEED = 0x01
    case REGULATION_MODE_MOTOR_SYNC = 0x02
}

enum ANLRunState: Byte {
    case MOTOR_RUN_STATE_IDLE = 0x00
    case MOTOR_RUN_STATE_RAMPUP = 0x10
    case MOTOR_RUN_STATE_RUNNING = 0x20
    case MOTOR_RUN_STATE_RAMPDOWN = 0x60
}

enum ANLSensorType: Byte {
    case NO_SENSOR = 0x00
    case SWITCH = 0x01
    case TEMPERATURE = 0x02
    case REFLECTION = 0x03
    case ANGLE = 0x04
    case LIGHT_ACTIVE = 0x05
    case LIGTH_INACTIVE = 0x06
    case SOUND_DB = 0x07
    case SOUND_DBA = 0x08
    case CUSTOM = 0x09
    case LOWSPEED = 0x0A
    case LOWSPEED_9V = 0x0B
    case NO_OF_SENSOR_TYPES = 0x0C
}

enum ANLMode: Byte {
    case MOTORON = 0x00
    case BRAKE = 0x01
    case REGULATED = 0x02
}