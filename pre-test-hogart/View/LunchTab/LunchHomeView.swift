//
//  LunchHomeView.swift
//  pre-test-hogart
//
//  Created by Luko on 26/08/2021.
//

import SwiftUI

struct LunchHomeView: View {
	
	@ObservedObject private var vm = RestaurantViewModel()
	
	@State private var showingSheet = false
	
	var deviceModel = UIDevice.current.localizedModel
	
	let columns = [ GridItem(.flexible())]
	
	var body: some View {
		
		NavigationView {
			ScrollView(showsIndicators: false) {
				LazyVGrid(columns: columns, spacing: 20) {
					ForEach(vm.restaurants, id: \.name) { restaurantInfo in
						NavigationLink(destination: RestaurantDetail(restaurantInfo: restaurantInfo)) {
							RestaurantGridItem(restaurantInfo: restaurantInfo)
					}
				}
			}
		}
		.navigationBarItems(
		trailing:
		 Button(action: { self.showingSheet = true }) {
			Image(systemName: "map")
		 }
		)
	}
		.padding([.leading, .trailing], 10)
		.sheet(isPresented: $showingSheet, onDismiss: {
			print(self.showingSheet)
			}) {
			ModalMapView()
		}
		.onAppear() {
			if UIDevice.current.localizedModel == "iPhone" {
				 print("This is an iPhone")
			} else if UIDevice.current.localizedModel == "iPad" {
				 print("This is an iPad")
			}
		}
	}
}
