//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

/// A simple banner for displaying a message to the user.
struct MessageBanner: View {
    
    /// The popcorn view model.
    @EnvironmentObject var popcorn: Popcorn
    
    /// The state of the banner's expansion.
    @State private var bannerExpanded: Bool = false
    
    /// The banner's body message.
    let bodyText: String = "This is an example of a of a Popcorn banner. " +
    "By default, the message only shows three lines of message text. But, if " +
    "you tap this banner,\n\nIt expands to show even more! 😎 If you tap again, " +
    "it will collapse. If you drag up, the banner will be dismissed."
    
    /// The popup view body
    var body: some View {
        PopcornMessageBanner(
            
            headerImage: PopcornIconView(),
            headerTextLeft: "POPCORN",
            headerTextRight: "",
            headerTextColor: .popcornGray,
            
            headlineText: "Welcome to Popcorn!",
            headlineTextColor: .popcornBlack,
            
            bodyText: bodyText,
            bodyTextColor: .popcornBlack,
            
            dragEnabled: true,
            dragDismissAction: { popcorn.currentBanner = nil },
            
            bannerFill: Color.white,
            bannerExpanded: bannerExpanded,
            bannerTapAction: {
                withAnimation(.spring()) {
                    bannerExpanded.toggle()
                }
            }
        )
    }
    
}
