//
//  HostProfileView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 09/08/24.
//

import SwiftUI

struct HostProfileView: View {
    
    let listing: Listing
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire home hosted by \(listing.ownerName)")
                    .font(.headline)
                    .frame(width: 250, alignment: .leading)
                
                HStack(spacing: 2) {
                    Text("\(listing.numberOfGuests) guests -")
                    Text("\(listing.numberOfBedrooms) bedrooms -")
                    Text("\(listing.numberOfBeds) beds -")
                    Text("\(listing.numberOfBethrooms) baths")
                }
                .font(.caption)
            }
            .frame(width: 300, alignment: .leading)
            
            Spacer()
            
            Image(listing.ownerImageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        }
    }
}

#Preview {
    HostProfileView(listing: DeveloperPreview.shared.listings[0])
}
