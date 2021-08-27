//
//  FrameForWebContent.swift
//  pre-test-hogart
//
//  Created by Luko on 24/08/2021.
//

import SwiftUI
import WebKit

struct InternetView: View {
	
	@StateObject var vm = WebViewModel()
	
	var body: some View {

			   
	   VStack(spacing: 0) {

		  HStack {
			Spacer()
			Button(action: {
				vm.goBack()
			}, label: {
				Image(systemName: "arrowshape.turn.up.backward")
			})
	
			
			Button(action: {
				vm.refresh()
			}, label: {
//							Image(systemName: "reload")
				Text("refresh")
			})
			
			Button(action: {
				vm.goForward()
			}, label: {
				Image(systemName: "arrowshape.turn.up.right")
			})
			Spacer()
		}

		   WebView(webView: vm.webView)
	   }
	}
}

