//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

struct MyGetTextPrompt: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    private let headlineText = "What's your name?"
    private let placeholderText = "enter name..."
    private let buttonText = "Submit"
    
    @State private var textFieldInput = ""
    @State private var buttonLoading = false
    
    var body: some View {
        PopcornGetTextPrompt(
            headerView: popupImage,
            headlineText: headlineText,
            textFieldPlaceholderText: placeholderText,
            textFieldInput: $textFieldInput,
            keyboardType: .alphabet,
            buttonText: buttonText,
            buttonLoading: buttonLoading,
            dragEnabled: true,
            textFieldOnChangeState: { _ in },
            textFieldOnChangeText: {},
            textFieldOnCommitText: {},
            buttonAction: {
                buttonLoading = true
                textFieldInput = ""
                hideKeyboard()
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    buttonLoading = false
                }
            },
            dragDismissAction: {
                popcorn.dismissCurrentPopup()
            },
            backgroundTapAction: {
                popcorn.dismissCurrentPopup()
            }
        )
    }
    
    private func hideKeyboard() {
        UIApplication.shared
        .sendAction(#selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
    
    private var popupImage: some View {
        GeometryReader { g in
            Text("🤔")
            .font(Font.system(size: g.size.height))
            .frame(
                width: g.size.width,
                height: g.size.height
            )
        }
    }

}

// MARK: - Preview
#if DEBUG
struct MyGetTextPrompt_Previews: PreviewProvider {
    static var previews: some View {
        MyGetTextPrompt().environmentObject(Popcorn(popups: []))
    }
}
#endif
