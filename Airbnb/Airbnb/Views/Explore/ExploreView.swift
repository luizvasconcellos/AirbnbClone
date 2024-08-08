//
//  ExploreView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 08/08/24.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0 ... 10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 400)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
