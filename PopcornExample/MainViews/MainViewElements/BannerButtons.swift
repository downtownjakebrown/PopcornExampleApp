//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

struct BannerButtons: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    var body: some View {
        VStack(spacing: 10) {
            PopupButton(label: "PopcornBannerToast", color: .paletteRed) {
                popcorn.currentBanner = MyMessageBanner.self
            }
        }.padding(.bottom, 5)
    }
    
}
