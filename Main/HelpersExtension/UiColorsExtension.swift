//
//  UI Color.swift
//  Tracker
//
//  Created by Сергей Ващенко on 03.08.23.
//

import UIKit

extension UIColor {
        
    static let backgroundColor = UIColor(named: "YPBackground") ?? UIColor.red
    static let switchColor = UIColor(named: "switchColor") ?? UIColor.blue
    static var bgColor: UIColor { UIColor(named: "YPBackground") ?? UIColor.red }
    static var searchColor: UIColor { UIColor(named: "SearchColor") ?? UIColor.gray }
    static var lightGray: UIColor { UIColor(named: "lightGray") ?? UIColor.gray }
    static var ypGray: UIColor { UIColor(named: "YPGray") ?? UIColor.gray }
    static var ypBlack: UIColor { UIColor(named: "YPBlack") ?? UIColor.black }
    static var ypBlue: UIColor { UIColor(named: "YPBlue") ?? UIColor.blue }
    static var ypRed: UIColor { UIColor(named: "YPRed") ?? UIColor.red }
    static var ypWhite: UIColor { UIColor(named: "YPWhite") ?? UIColor.white }
    
    static var ypColorSelection1: UIColor { UIColor(named: "Color selection 1") ?? UIColor.red }
    static var ypColorSelection2: UIColor { UIColor(named: "Color selection 2") ?? UIColor.red }
    static var ypColorSelection3: UIColor { UIColor(named: "Color selection 3") ?? UIColor.red }
    static var ypColorSelection4: UIColor { UIColor(named: "Color selection 4") ?? UIColor.red }
    static var ypColorSelection5: UIColor { UIColor(named: "Color selection 5") ?? UIColor.red }
    static var ypColorSelection6: UIColor { UIColor(named: "Color selection 6") ?? UIColor.red }
    static var ypColorSelection7: UIColor { UIColor(named: "Color selection 7") ?? UIColor.red }
    static var ypColorSelection8: UIColor { UIColor(named: "Color selection 8") ?? UIColor.red }
    static var ypColorSelection9: UIColor { UIColor(named: "Color selection 9") ?? UIColor.red }
    static var ypColorSelection10: UIColor { UIColor(named: "Color selection 10") ?? UIColor.red }
    static var ypColorSelection11: UIColor { UIColor(named: "Color selection 11") ?? UIColor.red }
    static var ypColorSelection12: UIColor { UIColor(named: "Color selection 12") ?? UIColor.red }
    static var ypColorSelection13: UIColor { UIColor(named: "Color selection 13") ?? UIColor.red }
    static var ypColorSelection14: UIColor { UIColor(named: "Color selection 14") ?? UIColor.red }
    static var ypColorSelection15: UIColor { UIColor(named: "Color selection 15") ?? UIColor.red }
    static var ypColorSelection16: UIColor { UIColor(named: "Color selection 16") ?? UIColor.red }
    static var ypColorSelection17: UIColor { UIColor(named: "Color selection 17") ?? UIColor.red }
    static var ypColorSelection18: UIColor { UIColor(named: "Color selection 18") ?? UIColor.red }
    
    var hexString: String {
        let components = self.cgColor.components
        let r: CGFloat = components?[0] ?? 0.0
        let g: CGFloat = components?[1] ?? 0.0
        let b: CGFloat = components?[2] ?? 0.0
        return String.init(
            format: "%02lX%02lX%02lX",
            lroundf(Float(r * 255)),
            lroundf(Float(g * 255)),
            lroundf(Float(b * 255))
        )
    }
}
