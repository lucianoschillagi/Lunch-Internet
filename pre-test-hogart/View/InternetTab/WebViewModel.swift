//
//  WebViewModel.swift
//  pre-test-hogart
//
//  Created by Luko on 26/08/2021.
//

import Foundation
import WebKit
import Combine

class WebViewModel: ObservableObject {
	
	let webView: WKWebView
	let url: URL
	
	init() {
		webView = WKWebView(frame: .zero)
		url = URL(string: "https://www.bottlerocketstudios.com/")!
		loadUrl()
	}
	
	func loadUrl() {
		webView.load(URLRequest(url: url))
	}
	
	func goForward() {
		webView.goForward()
	}
	
	func goBack() {
		webView.goBack()
	}

	func refresh() {
		webView.reload()
	}
}

