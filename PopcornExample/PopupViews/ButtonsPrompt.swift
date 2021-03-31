//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

///
struct ButtonsPrompt: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    var body: some View {
        PopcornButtonsPrompt(
            
            headerImage: HeaderImage(),
            headerText: "Sure you want to continue?",
            headerTextColor: .black,
            
            button1Text: "Yes",
            button1TextColor: .white,
            button1Fill: Color.red,
            button1Loading: false,
            button1Action: { popcorn.dismissCurrentPopup() },
            
            button2Text: "No",
            button2TextColor: .white,
            button2Fill: Color.red,
            button2Loading: false,
            button2Action: { popcorn.dismissCurrentPopup() },
            
            dragEnabled: true,
            dragDismissAction: { popcorn.dismissCurrentPopup() },
            
            backgroundFill: Color.white,
            backgroundTapAction: { popcorn.dismissCurrentPopup() }
            
        )
    }

}

struct HeaderImage: View {
    var body: some View {
        GeometryReader { g in
            Circle()
            .fill(Color.paletteRed)
            .frame(
                width: g.size.width,
                height: g.size.height
            )
        }
    }
}
