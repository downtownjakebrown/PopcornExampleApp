//
// See LICENSE file for this package’s licensing information.
//

import SwiftUI
import WebKit
import Combine

/// A view for displaying the README from the Popcorn GitHub repo.
struct ReadMeTab: View {
    
    /// Whether or not the webpage has loaded
    @State private var loaded: Bool = false
    
    /// The website URL
    private let url = "https://github.com/downtownjakebrown/Popcorn/blob/main/README.md"
    
    /// The view body
    var body: some View {
        ZStack {
            WebView(loaded: $loaded, url: url)
            ZStack {
                Rectangle().fill(Color.black.opacity(0.3))
                ActivityIndicator()
            }.opacity(loaded ? 0 : 1)
        }.ignoresSafeArea()
    }
    
}

/// A view for displaying a webpage.
fileprivate struct WebView: UIViewRepresentable {
    
    /// Whether or not the webpage has loaded
    @Binding var loaded: Bool
    
    /// The website URL
    var url: String
    
    /// Makes the UIView
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: url) else {
            return WKWebView()
        }
        let wkWebView = WKWebView()
        wkWebView.navigationDelegate = context.coordinator
        wkWebView.load(URLRequest(url: url))
        return wkWebView
    }
    
    /// Updates the UIView
    func updateUIView(_ webView: WKWebView, context: Context) {

    }
        
    /// Sets up the coordinator
    func makeCoordinator() -> Coordinator {
        Coordinator(self, loaded: $loaded)
    }
    
    /// Our web view coordinator
    class Coordinator : NSObject, WKNavigationDelegate {
        
        @Binding var loaded: Bool
        var parent: WebView
        var webViewNavigationSubscriber: AnyCancellable? = nil
        
        init(_ uiWebView: WebView, loaded: Binding<Bool>) {
            self.parent = uiWebView
            self._loaded = loaded
        }
        
        deinit {
            webViewNavigationSubscriber?.cancel()
        }
        
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            withAnimation(.linear(duration: 0.2)) {
                self.loaded = true
            }
        }
        
    }
    
}

/// An activity indicator view
fileprivate struct ActivityIndicator: View {
    
    /// Whether of not the view is animating
    @State private var animate: Bool = true

    /// The view body
    var body: some View {
        ActivityIndicatorUIView(animate: $animate)
        .scaledToFit()
    }
    
}

/// An wrapped up activity indicator view
fileprivate struct ActivityIndicatorUIView: UIViewRepresentable {
    
    /// Whether of not the view is animating
    @Binding var animate: Bool
    
    /// The color of the indicator
    private let color: UIColor = .black
    
    /// Makes the UIView
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.style = .medium
        activityIndicatorView.color = color
        return activityIndicatorView
    }
    
    /// Updates the UIView
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if self.animate {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
    
}
