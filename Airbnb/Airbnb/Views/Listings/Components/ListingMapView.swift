//
//  ListingMapView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 09/08/24.
//

import SwiftUI
import MapKit

struct ListingMapView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
            
            Map()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    ListingMapView()
}
