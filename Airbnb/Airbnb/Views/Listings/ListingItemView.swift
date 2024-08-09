//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 08/08/24.
//

import SwiftUI

struct ListingItemView: View {

    var body: some View {
        VStack(spacing: 8) {
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                
                VStack(alignment: .leading) {
                    Text("Porto, Portugal")
                        .fontWeight(.semibold)
                    
                    Text("18 km away")
                        .foregroundStyle(.gray)
                    
                    Text("Ago 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("€345")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                RatingView(rating: 4.86)
            }
            .font(.footnote)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ListingItemView()
}
