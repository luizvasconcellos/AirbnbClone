//
//  ExploreService.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 15/08/24.
//

import Foundation

class ExploreService {
    
    func fetchListings() async throws -> [Listing] {
        // returning mock value
        DeveloperPreview.shared.listings
    }
}
