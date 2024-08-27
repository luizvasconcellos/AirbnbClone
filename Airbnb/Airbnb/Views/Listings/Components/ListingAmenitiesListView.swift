//
//  ListingAmenitiesListView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 09/08/24.
//

import SwiftUI

struct ListingAmenitiesListView: View {
    
    let amenities: [ListingAmenities]
    
    var body: some View {
        VStack(alignment: .leading,spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(amenities) { amenitie in
                HStack {
                    Image(systemName: amenitie.imageName)
                    
                    Text(amenitie.title)
                        .font(.footnote)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ListingAmenitiesListView(amenities: DeveloperPreview.shared.listings[0].amenities)
}
