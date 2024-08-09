//
//  ListingImageCarouselView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 08/08/24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
