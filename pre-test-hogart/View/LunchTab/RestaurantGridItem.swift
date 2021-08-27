//
//  RestaurantGridItem.swift
//  pre-test-hogart
//
//  Created by Luko on 26/08/2021.
//

import SwiftUI

struct RestaurantGridItem: View {
	
	var restaurantInfo: Restaurant
	
	var body: some View {
		
		ZStack {
			
			UrlImageView(urlString: restaurantInfo.backgroundImageURL)
			
			VStack(alignment: .leading) {
				Spacer()
				HStack {
					VStack(alignment: .leading) {
						Text(restaurantInfo.name ?? "Unknown restaurant")
							.font(.title2)
							.bold()
						Text(restaurantInfo.category ?? "Unknown restaurant")
							.padding(.bottom)
					}.padding(.leading)
					Spacer()
				}
			}.foregroundColor(.white)
			
		}.cornerRadius(10)
	}
}
