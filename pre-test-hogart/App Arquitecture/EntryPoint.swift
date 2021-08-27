//
//  ContentView.swift
//  pre-test-hogart
//
//  Created by Luko on 24/08/2021.
//

import SwiftUI
import MapKit

struct EntryPoint: View {
	
	@State private var selection: Tab = .lunch
	
	enum Tab {
		case lunch
		case internet
	}
 
	var body: some View {
		
		TabView(selection: $selection) {
			
			LunchHomeView()
				.tabItem {
					Label("Lunch", systemImage: "star")
				}
				.tag(Tab.lunch)

			InternetView()
				.tabItem {
					Label("Internet", systemImage: "list.bullet")
				}
				.tag(Tab.internet)
		}
	}
}





