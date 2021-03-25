//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

struct ContentView: View {
    
    @EnvironmentObject var popcorn: Popcorn
    
    var body: some View {
        VStack(spacing: 10) {
            
            HStack {
                Text("Popcorn Tester")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                Spacer()
            }.padding(.top, 50)
            
            Rectangle().fill(Color.black).frame(height: 0.5)
            
            HStack {
                Text("Prompts")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.black)
                Spacer()
            }
            
            PromptButtons()
            
            Rectangle().fill(Color.black).frame(height: 0.5)
            
            HStack {
                Text("Toasts")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.black)
                Spacer()
            }
            
            BannerButtons()
            
            Spacer()
            
        }.padding(.horizontal)
        
    }
}
