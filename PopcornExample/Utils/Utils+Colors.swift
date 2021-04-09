//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI

extension Gradient {
    
    /// A light red to red color gradient
    static let red = Gradient(colors: [Color.red.brightness(0.15), Color.red])
    /// A light orange to orange color gradient
    static let orange = Gradient(colors: [Color.orange.brightness(0.15), Color.orange])
    /// A light yellow to yellow color gradient
    static let yellow = Gradient(colors: [Color.yellow.brightness(0.15), Color.yellow])
    /// A light green to green color gradient
    static let green = Gradient(colors: [Color.green.brightness(0.15), Color.green])
    /// A light blue to blue color gradient
    static let blue = Gradient(colors: [Color.blue.brightness(0.15), Color.blue])
    /// A light indigo to indigo color gradient
    static let indigo = Gradient(colors: [Color.indigo.brightness(0.15), Color.indigo])
    /// A light purple to purple color gradient
    static let purple = Gradient(colors: [Color.purple.brightness(0.15), Color.purple])
    /// A light teal to teal color gradient
    static let teal = Gradient(colors: [Color.teal.brightness(0.15), Color.teal])
    
}

extension Color {
    
    /// An indigo color.
    static let indigo = Color(UIColor.systemIndigo)
    /// A teal color.
    static let teal = Color(UIColor.systemTeal)
    
}

extension Color {
    
    /// Adjusts the brightness of a color.
    /// - Parameter brightness: The amount to increase or decrease the brightness of a color. Should be a value between -1.0 and 1.0.
    /// - Returns: The modified color.
    func brightness(_ brightness: Double) -> Color {
        
        let (r,g,b,a) = getComponentsRGBA(self)
        
        let adjustedColor = Color(
            .displayP3,
            red: min(max((r + brightness), 0), 1),
            green: min(max((g + brightness), 0), 1),
            blue: min(max((b + brightness), 0), 1),
            opacity: a
        )
        
        return adjustedColor
        
    }
    
    /// Gets the RGBA components of a color.
    /// - Parameter color: The color from which the components are extracted.
    /// - Returns: The red, blue, green, and alpha components of the color
    func getComponentsRGBA(_ color: Color) -> (Double, Double, Double, Double) {
        
        let color = UIColor(color)
        
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        color.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return (Double(r),Double(g),Double(b),Double(a))
        
    }
    
}


