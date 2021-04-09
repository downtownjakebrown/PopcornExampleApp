//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI

/// The main tab view of our app
struct TabMenu: View {
    
    /// The view body
    var body: some View {
        TabView {
            PopupListTab().tabItem {
                Label("Popups", systemImage: "arrow.up.circle.fill")
            }
            ReadMeTab().tabItem {
                Label("ReadMe", systemImage: "list.dash")
            }
        }.ignoresSafeArea(.keyboard)
    }
    
}
