//
//  ListingBedroomsView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 09/08/24.
//

import SwiftUI

struct ListingBedroomsView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll sleep")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1 ... 4, id: \.self) { bedroom in
                        VStack {
                            Image(systemName: "bed.double")
                            Text("Bedroom \(bedroom)")
                        }
                        .frame(width: 132, height: 100)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .scrollTargetBehavior(.paging)
        }
    }
}

#Preview {
    ListingBedroomsView()
}
