//
// See LICENSE file for this project’s licensing information.
//

import SwiftUI
import Popcorn

@main
struct PopcornExampleApp: App {
    
    let packet = PopcornPacket {
        ButtonsPrompt()
        GetTextPrompt()
        MessagePrompt()
        MessageBanner()
    }
    
    let seasoning = PopcornSeasoning(
        corners: .capsule,
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
