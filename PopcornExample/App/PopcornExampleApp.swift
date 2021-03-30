//
// See LICENSE file for this project’s licensing information.
//

import SwiftUI
import Popcorn

@main
struct PopcornExampleApp: App {
    
    let packet = PopcornPacket {
        MyButtonsPrompt()
        MyGetTextPrompt()
        MyMessagePrompt()
        MyMessageBanner()
    }
    
    let seasoning = PopcornSeasoning(
        corners: .rounded,
        colors: PopcornColorScheme(
            fillColor: .paletteWhite,
            textColor: .paletteBlack,
            buttonColorPrimary: .paletteRed,
            buttonColorSecondary: .paletteTan,
            buttonTextColor: .paletteWhite,
            backgroundColor: .paletteFade
        )
    )
    
    var body: some Scene {
        WindowGroup {
            MainView().popcornMaker(packet, with: seasoning)
        }
    }
    
}


/*
// The style of the app’s popups. You define the
// style of the popups global, then the style
// properties are assigned to the popups internally.
let popcornStyle = PopcornStyle(
    corners: .rounded,
    colors: PopcornColorScheme(
        fillColor: .paletteWhite,
        textColor: .paletteBlack,
        buttonColorPrimary: .paletteRed,
        buttonColorSecondary: .paletteTan,
        buttonTextColor: .paletteWhite,
        backgroundColor: .paletteFade
    )
)
*/
