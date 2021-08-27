//
//  RestaurantViewModel.swift
//  pre-test-hogart
//
//  Created by Luko on 26/08/2021.
//

import Foundation

class RestaurantViewModel: ObservableObject {
	
	@Published var restaurants = [Restaurant]()
	
	init() {
		loadData()
	}
	
	func loadData() {
		
		let endpoint = "https://s3.amazonaws.com/br-codingexams/restaurants.json"
		
		guard let url = URL(string:endpoint ) else {
			print("Your API end point is Invalid")
			return
		}
		
		let request = URLRequest(url: url)

		URLSession.shared.dataTask(with: request) { data, response, error in
			
			let response = try! JSONDecoder().decode(Response.self, from: data!)
			
			DispatchQueue.main.async {
	
				self.restaurants = response.restaurants

			}
		}.resume()
	}
}
