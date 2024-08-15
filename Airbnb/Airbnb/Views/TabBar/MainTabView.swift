//
//  MainTabView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 14/08/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}
