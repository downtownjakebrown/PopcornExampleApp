//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

/// A simple two-button prompt for our example app.
struct ButtonsPrompt: View {
    
    /// The popcorn view model
    @EnvironmentObject var popcorn: Popcorn
    
    /// The popup view body
    var body: some View {
        PopcornButtonsPrompt(
            
            headerImage: PopcornIconView(),
            headerText: "Sure you want to continue?",
            headerTextColor: .popcornBlack,
            
            button1Text: "Yes",
            button1TextColor: .popcornWhite,
            button1Fill: LinearGradient(gradient: .popcornRed, startPoint: .top, endPoint: .bottom),
            button1Loading: false,
            button1Action: { popcorn.dismissCurrentPopup() },
            
            button2Text: "No",
            button2TextColor: .popcornWhite,
            button2Fill: LinearGradient(gradient: .popcornBlue, startPoint: .top, endPoint: .bottom),
            button2Loading: false,
            button2Action: { popcorn.dismissCurrentPopup() },
            
            buttonStyle: .verticalStack,
            
            dragEnabled: true,
            dragDismissAction: { popcorn.dismissCurrentPopup() },
            
            backgroundFill: Color.popcornWhite,
            backgroundTapAction: { popcorn.dismissCurrentPopup() }
            
        )
    }

}

// MARK: - Preview
#if DEBUG
struct ButtonsPrompt_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsPrompt().environmentObject(PopcornPreview)
    }
}
#endif
