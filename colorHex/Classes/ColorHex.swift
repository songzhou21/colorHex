import UIKit

extension UIColor {
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
