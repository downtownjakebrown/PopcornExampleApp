//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI

struct PopupButton: View {
    
    let label: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
            .fill(color)
            .overlay(
                Text(label)
                .font(.subheadline)
                .bold()
                .foregroundColor(.white)
            )
            .background(
                Capsule(style: .continuous)
                .fill(Color.white)
                .shadow(color: Color.white.opacity(0.1), radius: 5)
            )
            .frame(height: 50)
        }
    }
    
}
