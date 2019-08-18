//
//  SwitchData.swift
//  08_05_Comments
//
//  Created by Steven Lipton on 8/15/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import Foundation
struct ToggleLight:Identifiable{
    var id:Int
    var isOn:Bool
}

/// A data structure for a row of lights
struct LightBank{
    /// A pattern of lights.
    /// - Can be `.allOn`, `.allOff`, `.evenOn`, or `.oddOn`.
    enum BankState{
        case allOn,allOff,evenOn,oddOn
    }
    var lights:[ToggleLight] = []
    func isEven(_ number:Int) -> Bool{
        return (number % 2) == 0
    }
    /// A data Structure for a row of lights
    /// - Parameter count: The number of lights in a row
    /// - Parameter on: The pattern of lights in the row from `BankState`. Can be `.allOn`, `.allOff`, `.evenOn`, or `.oddOn`.
    init(count:Int, on:BankState ){
        for light in (0..<count){
            var newState = false
            switch on{
                case .allOn:
                    newState = true
                case .allOff:
                    newState = false
                case .evenOn:
                    newState = (light % 2) == 0
                case .oddOn:
                    newState = (light % 2) != 0
            }
            self.lights += [ToggleLight(id:light,isOn:newState)]
        }
        
    }
    
}
