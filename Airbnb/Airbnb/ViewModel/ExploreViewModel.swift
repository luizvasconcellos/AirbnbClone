//
//  ExploreViewModel.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 15/08/24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var originalListings = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
            originalListings = self.listings
        } catch {
            print("DEBUG:: failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation() {
        if searchLocation.isEmpty {
            self.listings = originalListings
            return
        }
        
        let filteredListings = originalListings.filter({
            $0.city.lowercased().contains(searchLocation.lowercased()) ||
            $0.state.lowercased().contains(searchLocation.lowercased())
        })
        
        self.listings = filteredListings.isEmpty ? originalListings : filteredListings
    }
}
