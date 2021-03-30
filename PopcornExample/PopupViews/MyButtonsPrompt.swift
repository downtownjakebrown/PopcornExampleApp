//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

struct MyButtonsPrompt: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    @State private var headlineText = "Sure you want to continue?"
    private let button1Text = "Yes"
    private let button2Text = "No"
    
    @State private var button1Loading = false
    @State private var button2Loading = false
    
    var body: some View {
        PopcornButtonsPrompt(
            headerView: popupImage,
            headlineText: headlineText,
            button1Text: button1Text,
            button2Text: button2Text,
            button1Loading: button1Loading,
            button2Loading: button2Loading,
            dragEnabled: true,
            button1Action: {
                button1Loading = true
                headlineText = "OK! Continuing..."
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    popcorn.dismissCurrentPopup()
                    button1Loading = false
                }
            },
            button2Action: {
                button2Loading = true
                headlineText = "OK! Not continuing..."
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    popcorn.dismissCurrentPopup()
                    button2Loading = false
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
    
    private var popupImage: some View {
        GeometryReader { g in
            Text("😬")
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
//struct MyButtonsPrompt_Previews: PreviewProvider {
//    static var previews: some View {
//        MyButtonsPrompt().environmentObject(Popcorn(popups: []))
//    }
//}
//#endif
