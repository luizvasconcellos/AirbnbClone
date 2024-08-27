//
//  ListingFeaturesView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 09/08/24.
//

import SwiftUI

struct ListingFeaturesView: View {
    
    let features: [ListingFeatures]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(features) { feature in
                HStack(spacing: 12) {
                    Image(systemName: feature.imageName)
                    
                    VStack(alignment: .leading) {
                        Text(feature.title)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text(feature.subTitle)
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ListingFeaturesView(features: DeveloperPreview.shared.listings[0].features)
}
