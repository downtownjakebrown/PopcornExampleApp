//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            ContentView()
        }.ignoresSafeArea(.keyboard)
    }
}
