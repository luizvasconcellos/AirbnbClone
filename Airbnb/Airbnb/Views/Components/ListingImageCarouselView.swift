//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 08/08/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var listingImages: [String]
    
    var body: some View {
        TabView {
            ForEach(listingImages, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }        
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listingImages: DeveloperPreview.shared.listings[0].imageURLs)
}
