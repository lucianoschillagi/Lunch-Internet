//
//  UrlImageView.swift
//  pre-test-hogart
//
//  Created by Luko on 26/08/2021.
//

import SwiftUI

struct UrlImageView: View {
	
	@ObservedObject var urlImageModel: UrlImageModel
	
	init(urlString: String?) {
		urlImageModel = UrlImageModel(urlString: urlString)
	}
	
	var body: some View {
		Image(uiImage: urlImageModel.image ?? UIImage())
			.resizable()
			.scaledToFill()
	}
}

struct UrlImageView_Previews: PreviewProvider {
	static var previews: some View {
		UrlImageView(urlString: nil)
	}
}
