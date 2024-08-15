//
//  WishlistView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 14/08/24.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack (alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("you can create, view or edit Wishlists once you've logged in")
                        .font(.footnote)
                }
                
                LoginButton()
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
