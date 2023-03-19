//
//  GIFImage.swift
//  OnboardingExample
//
//  Created by Ahmed Fathy on 19/03/2023.
//

import SwiftUI
import WebKit

struct GIFImage: UIViewRepresentable {
    private var name: String
    
    init(_ name: String) {
        self.name = name
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let webview = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url)
        
        webview.load(
            data,
            mimeType: "image/gif",
            characterEncodingName: "UTF-8",
            baseURL: url.deletingLastPathComponent()
        )
        return webview
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
    
    typealias UIViewType = WKWebView
}
