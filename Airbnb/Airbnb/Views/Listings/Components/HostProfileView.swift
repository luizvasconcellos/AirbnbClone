//
//  HostProfileView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 09/08/24.
//

import SwiftUI

struct HostProfileView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire home hosted by Maria João")
                    .font(.headline)
                    .frame(width: 250, alignment: .leading)
                
                HStack(spacing: 2) {
                    Text("4 guests -")
                    Text("3 bedrooms -")
                    Text("4 beds -")
                    Text("3 baths")
                }
                .font(.caption)
            }
            .frame(width: 300, alignment: .leading)
            
            Spacer()
            
            Image("profile")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
            
        }
    }
}

#Preview {
    HostProfileView()
}
