//
//  RestaurantDetail.swift
//  pre-test-hogart
//
//  Created by Luko on 26/08/2021.
//

import SwiftUI

struct RestaurantDetail: View {

	var restaurantInfo: Restaurant
	
    var body: some View {
		
		VStack {
			
			UrlImageView(urlString: restaurantInfo.backgroundImageURL)

			HStack() {
				VStack(alignment: .leading) {
					Text(restaurantInfo.name ?? "")
						.bold()
						.font(.system(size: 20))
					Text(restaurantInfo.category ?? "")
				}.padding(.leading, 30)
				Spacer()
				
			}
			.frame(height: 60)
			.frame(maxWidth: .infinity)
			.background(Color.green)
			.foregroundColor(.white)
			.cornerRadius(8)
			
			HStack {
				VStack(alignment: .leading) {
					Text(restaurantInfo.location?.formattedAddress?[0] ?? "")
						.padding(.top, 25)
						.padding(.bottom, 25)
					Text(restaurantInfo.location?.formattedAddress?[1] ?? "")
						.padding(.bottom, 25)
					Text(restaurantInfo.contact?.phone ?? "")
						.padding(.bottom, 25)
					HStack {
						Text("@")
						Text(restaurantInfo.contact?.twitter ?? "")
					}
					
	//				Text("@" + "\(restaurantInfo.contact?.twitter)")
						.padding(.bottom, 36)
				}
				.padding(.leading)
				Spacer()
			}

		}
//		.navigationBarTitle(restaurantInfo.name ?? "")
    }
}
