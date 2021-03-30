//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

struct PromptButtons: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    var body: some View {
        VStack(spacing: 10) {
            PopupButton(label: "PopcornMessagePrompt", color: .paletteRed) {
                popcorn.currentPopup = MessagePrompt.self
            }
            PopupButton(label: "PopcornButtonsPrompt", color: .paletteRed) {
                popcorn.currentPopup = ButtonsPrompt.self
            }
            PopupButton(label: "PopcornGetTextPrompt", color: .paletteRed) {
                popcorn.currentPopup = GetTextPrompt.self
            }
        }.padding(.bottom, 5)
    }
    
}
