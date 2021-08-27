//
//  RestaurantModel.swift
//  pre-test-hogart
//
//  Created by Luko on 24/08/2021.
//

import Foundation

struct Response: Codable {
	let restaurants: [Restaurant]
}

struct Restaurant: Codable {
	var name: String?
	var backgroundImageURL: String?
	var category: String?
	var contact: Contact?
	var location: Location?

	struct Contact: Codable {
		var phone: String?
		var formattedPhone: String?
		var twitter: String?
	}

	struct Location: Codable {
		var address: String?
		var crossStreet: String?
		var lat: Double?
		var lng: Double?
		var postalCode: String?
		var cc: String?
		var city: String?
		var state: String?
		var country: String?
		var formattedAddress: [String]?
	}
}
