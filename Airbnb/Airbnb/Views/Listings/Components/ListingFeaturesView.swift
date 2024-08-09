//
//  ListingFeaturesView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 09/08/24.
//

import SwiftUI

struct ListingFeaturesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(0 ..< 2) { feature in
                HStack(spacing: 12) {
                    Image(systemName: "door.left.hand.open")
                    
                    VStack(alignment: .leading) {
                        Text("Self check-in")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Check yourself in with the keypad.")
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
    ListingFeaturesView()
}
