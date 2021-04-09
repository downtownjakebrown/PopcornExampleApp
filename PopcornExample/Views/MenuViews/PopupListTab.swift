//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import Popcorn

/// A tab for displaying a list of popup examples.
struct PopupListTab: View {
    
    /// The view body
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                PopupListHeader()
                PopupListButtons()
                Spacer()
            }
        }
    }
    
}

/// The background view of our app.
fileprivate struct PopupListHeader: View {
    
    /// The view body
    var body: some View {
        HStack {
            
            Text("Popcorn Example")
            .foregroundColor(.black)
            .font(.largeTitle)
            .bold()
            
            Spacer()
            
        }
        .padding(.horizontal)
        .padding(.top, 50)
        .padding(.bottom, 5)
    }
    
}

/// A group of buttons for displaying popups.
fileprivate struct PopupListButtons: View {
    
    /// The popcorn view model
    @EnvironmentObject var popcorn: Popcorn
    
    /// The view body
    var body: some View {
        VStack {
            
            PopupListButton(
                title: "MessagePrompt",
                subtitle: "A simple message prompt.",
                gradient: .green,
                imageName: "message.circle.fill"
            ) {
                popcorn.currentPopup = MessagePrompt.self
            }.frame(height: 100)
        
            PopupListButton(
                title: "ButtonsPrompt",
                subtitle: "A simple two-button prompt.",
                gradient: .orange,
                imageName: "rectangle.fill.on.rectangle.fill.circle.fill"
            ) {
                popcorn.currentPopup = ButtonsPrompt.self
            }.frame(height: 100)

            PopupListButton(
                title: "GetTextPrompt",
                subtitle: "A simple prompt to get text from a user.",
                gradient: .red,
                imageName: "ellipsis.circle.fill"
            ) {
                popcorn.currentPopup = GetTextPrompt.self
            }.frame(height: 100)
        
            PopupListButton(
                title: "MessageBanner",
                subtitle: "A simple banner for displaying a message.",
                gradient: .purple,
                imageName: "envelope.circle.fill"
            ) {
                popcorn.currentBanner = MessageBanner.self
            }.frame(height: 100)
            
        }.padding(.horizontal)
    }
    
}

/// A button for displaying popups.
fileprivate struct PopupListButton: View {
    
    /// The title text of the button
    let title: String
    /// The subtitle text of the button
    let subtitle: String
    /// The gradient fill of the button
    let gradient: Gradient
    /// The system name of the image displayed on the button
    let imageName: String
    /// The action to be executed when the button is tapped
    let onTap: () -> Void
    
    /// The view body
    var body: some View {
        Button(action: {
            onTap()
        }) {
            RoundedRectangle(cornerRadius: 20.0)
            .fill(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
            .shadow(color: Color.gray.opacity(0.3), radius: 10)
            .overlay(
                VStack {
                    
                    HStack {
                        
                        Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.white)
                        .frame(width: 25, height: 25)
                        
                        Spacer()
                    }
                    
                    HStack {
                        
                        Text(title)
                        .font(.headline)
                        .foregroundColor(.white)
                        .lineLimit(1)
                        
                        Spacer()
                        
                    }
                    
                    HStack {
                        
                        Text(subtitle)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .lineLimit(1)
                        
                        Spacer()
                        
                    }
                    
                }.padding(.horizontal)
            )
        }
    }
    
}
