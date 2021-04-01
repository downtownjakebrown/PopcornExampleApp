//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI

extension Color {
    
    /// A red color for our app's color palette
    static let popcornRed = Color(#colorLiteral(red: 1, green: 0.3019607843, blue: 0.3254901961, alpha: 1))
    /// A light red color for our app's color palette
    static let popcornRedLight = Color(#colorLiteral(red: 1, green: 0.3960784314, blue: 0.4156862745, alpha: 1))
    /// A lighter red color for our app's color palette
    static let popcornRedLighter = Color(#colorLiteral(red: 1, green: 0.5098039216, blue: 0.5098039216, alpha: 1))
    /// A lighter red color for our app's color palette
    static let popcornRedLightest = Color(#colorLiteral(red: 1, green: 0.6274509804, blue: 0.6274509804, alpha: 1))
    
    /// A red color for our app's color palette
    static let popcornYellow = Color(#colorLiteral(red: 1, green: 0.8196078431, blue: 0.2823529412, alpha: 1))
    /// A light red color for our app's color palette
    static let popcornYellowLight = Color(#colorLiteral(red: 1, green: 0.8941176471, blue: 0.6431372549, alpha: 1))
    
    /// A blue color for our app's color palette
    static let popcornBlue = Color(#colorLiteral(red: 0, green: 0.6039215686, blue: 0.5843137255, alpha: 1))
    /// A light blue color for our app's color palette
    static let popcornBlueLight = Color(#colorLiteral(red: 0, green: 0.6980392157, blue: 0.6745098039, alpha: 1))
    
    /// A gray color for our app's color palette.
    static let popcornGray = Color(#colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1))
    /// A light gray color for our app's color palette.
    static let popcornGrayLight = Color(#colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1))
    
    /// A white color for our app's color palette.
    static let popcornWhite = Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    /// A black color for our app's color palette.
    static let popcornBlack = Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    
}

extension Gradient {
    
    /// A light red to red color gradient
    static let popcornRed = Gradient(colors: [.popcornRedLight, .popcornRed])
    /// A lightest red to lighter red color gradient
    static let popcornRedLight = Gradient(colors: [.popcornRedLightest, .popcornRedLighter])
    /// A light yellow to yellow color gradient
    static let popcornYellow = Gradient(colors: [.popcornYellowLight, .popcornYellow])
    /// A light blue to blue color gradient
    static let popcornBlue = Gradient(colors: [.popcornBlueLight, .popcornBlue])
    /// A light gray to gray color gradient
    static let popcornGray = Gradient(colors: [.popcornGrayLight, .popcornGray])
    
}
