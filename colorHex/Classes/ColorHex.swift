//
//  test.swift
//  ColorHex
//
//  Created by songzhou on 2018/5/9.
//

import UIKit

extension UIColor {
    @objc
    class public func color(hex: UInt32) -> UIColor {
        return  UIColor(hex: hex)
    }
    
    @objc
    class public func color(hexString: String) -> UIColor {
        return UIColor(hexString: hexString)
    }
    
    public convenience init(hex: UInt32) {
        let rmd: UInt32 = 0xFF
        let mask: UInt32 = 0xFF
        
        let step: UInt8 = 8
        let length: UInt8 = 3
        
        var rgbs: [CGFloat] = []
        for i in 0 ..< length {
            let offset = step * i
            let percent = Double(hex >> offset & mask) / Double(rmd)
            
            rgbs.append(CGFloat(percent))
        }
        
        self.init(red: rgbs[2], green: rgbs[1], blue: rgbs[0], alpha: 1.0)
    }
    
    public convenience init(hexString: String) {
        var colorHex: UInt32 = 0
        
        if hexString.lowercased().hasPrefix("0x") {
            Scanner(string: hexString).scanHexInt32(&colorHex)
        } else if hexString.hasPrefix("#") {
            let hexValueString = String(hexString[hexString.index(after: hexString.startIndex) ..< hexString.endIndex])
            colorHex = UInt32(hexValueString, radix: 16)!
        }

        self.init(hex: colorHex)
    }
}
