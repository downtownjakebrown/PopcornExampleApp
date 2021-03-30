//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

struct MyMessagePrompt: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    private let headlineText = "Hey There!"
    private let buttonText = "Dismiss"
    private let bodyText = "Thanks for using Popcorn popups. Tap the button below to dismiss."
    
    @State private var buttonLoading = false
    
    var body: some View {
        PopcornMessagePrompt(
            headerView: popupImage,
            headlineText: headlineText,
            bodyText: bodyText,
            buttonText: buttonText,
            buttonLoading: buttonLoading,
            dragEnabled: true,
            buttonAction: {
                popcorn.dismissCurrentPopup()
            },
            dragDismissAction: {
                popcorn.dismissCurrentPopup()
            },
            backgroundTapAction: {
                popcorn.dismissCurrentPopup()
            }
        )
    }
    
    private var popupImage: some View {
        GeometryReader { g in
            Text("🥳")
            .font(Font.system(size: g.size.height))
            .frame(
                width: g.size.width,
                height: g.size.height
            )
        }
    }
    
}

//// MARK: - Preview
//#if DEBUG
//struct MyMessagePrompt_Previews: PreviewProvider {
//    static var previews: some View {
//        MyMessagePrompt().environmentObject(Popcorn(popups: []))
//    }
//}
//#endif
