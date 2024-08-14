//
//  CollapsibleDestinationViewModifier.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 14/08/24.
//

import SwiftUI

struct CollapsibleDestinationViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}
