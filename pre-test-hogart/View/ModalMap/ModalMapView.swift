//
//  ModalMapView.swift
//  pre-test-hogart
//
//  Created by Luko on 26/08/2021.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
	func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
		let mapView = MKMapView()
		return mapView
	}

	func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
	}
}

	
struct ModalMapView: View {
	
	@Environment(\.presentationMode) var presentation

	var body: some View {
		VStack {
			Text("Dismiss")
				.padding(.top)
				.onTapGesture {
					self.presentation.wrappedValue.dismiss()
			}
			MapView()
		}
	}
}

struct ModalMapView_Previews: PreviewProvider {
    static var previews: some View {
        ModalMapView()
    }
}
