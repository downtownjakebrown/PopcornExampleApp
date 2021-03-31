//
// See LICENSE file for this project’s licensing information.
//

import SwiftUI
import Popcorn

@main
struct PopcornExampleApp: App {
    
    /// A packet for holding your popups
    let popcornPacket = PopcornPacket {
        ButtonsPrompt()
        GetTextPrompt()
        MessagePrompt()
        MessageBanner()
    }
    
    // Setting the scene for our app, and injecting our popups
    // packet into the view heirarchy using the popcornMaker.
    var body: some Scene {
        WindowGroup {
            MainView().popcornMaker(popcornPacket)
        }
    }
    
}
