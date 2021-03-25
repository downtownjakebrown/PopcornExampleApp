//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

struct PromptButtons: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    var body: some View {
        VStack(spacing: 10) {
            PopupButton(label: "PopcornMessagePrompt", color: .popcornRed) {
                popcorn.currentPopup = PopupNameList.MyMessagePrompt
            }
            PopupButton(label: "PopcornButtonsPrompt", color: .popcornRed) {
                popcorn.currentPopup = PopupNameList.MyButtonsPrompt
            }
            PopupButton(label: "PopcornGetTextPrompt", color: .popcornRed) {
                popcorn.currentPopup = PopupNameList.MyGetTextPrompt
            }
        }.padding(.bottom, 5)
    }
    
}
