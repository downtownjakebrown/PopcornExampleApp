//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

///
struct MessagePrompt: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    var body: some View {
        PopcornMessagePrompt(
            
            headerImage: HeaderImage(),
            headerText: "Hello",
            headerTextColor: .black,
            
            bodyText: "Hello",
            bodyTextColor: .black,
            
            buttonText: "Dismiss",
            buttonTextColor: .white,
            buttonFill: Color.red,
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
