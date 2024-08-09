//
//  ListingAmenitiesListView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 09/08/24.
//

import SwiftUI

struct ListingAmenitiesListView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(0 ..< 4) { feature in
                HStack {
                    Image(systemName: "wifi")
                    
                    Text("Wi-Fi")
                        .font(.footnote)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ListingAmenitiesListView()
}
