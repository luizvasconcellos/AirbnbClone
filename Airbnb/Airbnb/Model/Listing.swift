//
//  Listing.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 15/08/24.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    
    let id: String
    let title: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBeds: Int
    let numberOfBethrooms: Int
    let numberOfGuests: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    var imageURLs: [String]
    let address: String
    let city: String
    let state: String
    let rating: Double
    let numberOfReviews: Int
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    
    case selfCheckin
    case superHost
    
    var title: String {
        switch self {
        case .selfCheckin: "Self check -in"
        case .superHost: "Superhost"
        }
    }
    
    var subTitle: String {
        switch self {
        case .selfCheckin: "Check yourself in with the keypad."
        case .superHost: "Superhosts are experienced, highly rated hosts who are commited to providing great stars for guests."
        }
    }
    
    var imageName: String {
        switch self {
        case .selfCheckin: "door.left.hand.open"
        case .superHost: "medal"
        }
    }
    
    var id: Int { self.rawValue }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmsystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchen"
        case .wifi: return "Wifi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmsystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmsystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruler.fill"
        case .balcony: return "building"
        }
    }
    
    var id: Int { self.rawValue }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: "Apartment"
        case .house: "House"
        case .townHouse: "Town House"
        case .villa: "vila"
        }
    }
    
    var id: Int { self.rawValue }
}
