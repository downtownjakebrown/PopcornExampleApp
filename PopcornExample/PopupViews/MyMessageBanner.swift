//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

struct MyMessageBanner: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    @State private var expandBanner: Bool = false
    
    let messageText: String = "This is an example of a of a Popcorn banner. By default, the message only shows three lines of message text. But, if you tap this banner,\n\nIt expands to show even more! 😎 If you tap again it will collapse. If you drag up, the banner will be dismissed."
    
    var body: some View {
        PopcornMessageBanner(
            headerImage: Text("🍿"),
            headerTextLeft: "POPCORN",
            headerTextRight: "",
            headlineText: "Welcome to Popcorn!",
            messageText: messageText,
            expandBanner: expandBanner,
            dragEnabled: true,
            dragDismissAction: {
                popcorn.currentBanner = nil
            },
            tapAction: {
                withAnimation(.spring()) {
                    expandBanner.toggle()
                }
            }
        )
    }
}

//// MARK: - Preview
//#if DEBUG
//struct PopcornBannerToast_Previews: PreviewProvider {
//    static var previews: some View {
//        ZStack {
//            Color.gray.ignoresSafeArea()
//            VStack {
//                MyBannerToast()
//                Spacer()
//            }.environmentObject(Popcorn(popups: []))
//        }
//    }
//}
//#endif
