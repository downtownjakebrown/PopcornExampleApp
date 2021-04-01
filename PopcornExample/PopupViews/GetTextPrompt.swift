//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

/// A simple prompt to get text from a user.
struct GetTextPrompt: View {
    
    /// The popcorn view model
    @EnvironmentObject var popcorn: Popcorn
    
    /// The user-input text
    @State private var textFieldInput = ""
    
    /// The popup view body
    var body: some View {
        PopcornGetTextPrompt(
    
            headerImage: PopcornIconView(),
            headerText: "What's your name?",
            headerTextColor: .black,
            
            textFieldInput: $textFieldInput,
            textFieldPlaceholderText: "enter name...",
            textFieldTextColor: .black,
            textFieldOnChangeState: { _ in },
            textFieldOnChangeText: {},
            textFieldOnCommitText: {},
            textFieldKeyboardType: .alphabet,
            
            buttonText: "Submit",
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
struct GetTextPrompt_Previews: PreviewProvider {
    static var previews: some View {
        GetTextPrompt().environmentObject(PopcornPreview)
    }
}
#endif
