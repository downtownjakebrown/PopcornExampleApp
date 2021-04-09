//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

/// Our app's main view
struct MainView: View {
    
    /// The view body
    var body: some View {
        ZStack {
            BackgroundView()
            TabMenu()
        }
    }
    
}

/// The background view of our app.
fileprivate struct BackgroundView: View {
    
    /// The view body
    var body: some View {
        Color.white.ignoresSafeArea()
    }
    
}

// MARK: - Preview
#if DEBUG
struct AppMainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(PopcornPreview)
    }
}
#endif
