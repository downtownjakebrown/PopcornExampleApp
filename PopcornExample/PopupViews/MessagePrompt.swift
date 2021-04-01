//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

/// A simple message prompt for our example app.
struct MessagePrompt: View {
    
    /// The popcorn view model
    @EnvironmentObject var popcorn: Popcorn
    
    /// The popup view body
    var body: some View {
        PopcornMessagePrompt(
            
            headerImage: PopcornIconView(),
            headerText: "Hey There!",
            headerTextColor: .popcornRed,
            
            bodyText: "Thanks for using popcorn. This is a simple message prompt.",
            bodyTextColor: .popcornGray,
            
            buttonText: "Let's Go",
            buttonTextColor: .white,
            buttonFill: LinearGradient(gradient: .popcornRed, startPoint: .top, endPoint: .bottom),
            buttonLoading: false,
            buttonAction: { popcorn.dismissCurrentPopup() },
            
            dragEnabled: true,
            dragDismissAction: { popcorn.dismissCurrentPopup() },
            
            backgroundFill: Color.white,
            backgroundTapAction: { popcorn.dismissCurrentPopup() }
            
        )
    }
    
}


// MARK: - Preview
#if DEBUG
struct MessagePrompt_Previews: PreviewProvider {
    static var previews: some View {
        MessagePrompt().environmentObject(PopcornPreview)
    }
}
#endif
