//
// See LICENSE file for this project’s licensing information.
//

import SwiftUI
import Popcorn

@main
struct PopcornExampleApp: App {

    // Setting up Popcorn and passing in:
    // 1. The app's popups, stored in an array
    // 2. The style to be applied to the popups
    let popcorn = Popcorn(
        popups: popcornPopups,
        style: popcornStyle
    )
    
    // Setting the scene of our MainView, and attaching
    // our popcornObserver view modifier to it.
    var body: some Scene {
        WindowGroup {
            MainView().popcornObserver(with: popcorn)
        }
    }
    
}

// Defining some attributes for Popcorn
extension PopcornExampleApp {
    
    // An array containing the app's popups. Each item
    // of the array is a PopcornPopup that includes:
    // 1. A popup view
    // 2. A name used to reference the popup
    //
    // See "PopupViews" folder for their definitions
    static let popcornPopups = [
        PopcornPopup(
            name: PopupNameList.MyButtonsPrompt,
            view: MyButtonsPrompt()),
        PopcornPopup(
            name: PopupNameList.MyGetTextPrompt,
            view: MyGetTextPrompt()),
        PopcornPopup(
            name: PopupNameList.MyMessagePrompt,
            view: MyMessagePrompt()),
        PopcornPopup(
            name: PopupNameList.MyBannerToast,
            view: MyBannerToast())
    ]
    
    // The style of the app’s popups. You define the
    // style of the popups global, then the style
    // properties are assigned to the popups internally.
    static let popcornStyle = PopcornStyle(
        corners: .rounded,
        colors: PopcornColorScheme(
            fillColor: .paletteWhite,
            textColor: .paletteBlack,
            buttonColorPrimary: .paletteRed,
            buttonColorSecondary: .paletteTan,
            buttonTextColor: .paletteBlack,
            backgroundColor: .paletteFade
        )
    )
    
}
