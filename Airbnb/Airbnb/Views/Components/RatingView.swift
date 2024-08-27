//
//  RatingView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 08/08/24.
//

import SwiftUI

struct RatingView: View {
    var rating: Double
    var reviewsCount: Int?
    
    var body: some View {
        HStack(spacing: 2) {
            Image(systemName: "star.fill")
            Text(String(rating))
                .fontWeight(.semibold)
            if let reviewsCount = reviewsCount {
                Text(" - ")
                if reviewsCount == 1 {
                    Text("\(String(reviewsCount)) review")
                        .underline()
                        .fontWeight(.semibold)
                } else {
                    Text("\(reviewsCount == 0 ? "no" : String(reviewsCount)) reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
            }
        }
        .font(.caption)
    }
}

#Preview {
    Group(content: {
        RatingView(rating: 4.85, reviewsCount: 17)
        RatingView(rating: 4.85, reviewsCount: 1)
        RatingView(rating: 0.0, reviewsCount: 0)
        RatingView(rating: 4.86)
    })
}
