//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 08/08/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
    ]
    var body: some View {
        VStack(spacing: 8) {
            TabView {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
    
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
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
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                        .fontWeight(.semibold)
                    
                }
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
