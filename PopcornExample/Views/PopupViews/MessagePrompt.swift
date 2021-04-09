//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

/// A simple message prompt.
struct MessagePrompt: View {
    
    /// The popcorn view model
    @EnvironmentObject var popcorn: Popcorn
    
    /// The popup view body
    var body: some View {
        PopcornMessagePrompt(
            
            headerImage: PopcornIconView(),
            headerText: "Hey There!",
            headerTextColor: .black,
            
            bodyText: "Thanks for using popcorn. This is a simple message prompt.",
            bodyTextColor: .black,
            
            buttonText: "Let's Go",
            buttonTextColor: .white,
            buttonFill: LinearGradient(gradient: .red, startPoint: .top, endPoint: .bottom),
            buttonLoading: false,
            buttonAction: { popcorn.dismissCurrentPopup() },
            
            dragEnabled: true,
            dragDismissAction: { popcorn.dismissCurrentPopup() },
            
            backgroundFill: Color.white,
            backgroundTapAction: { popcorn.dismissCurrentPopup() },
            
            cornerStyle: .capsule
            
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
