//
//  CollapsedPickerView.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 13/08/24.
//

import SwiftUI

struct CollapsedPickerView: View {
    
    let title: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//        .padding()
//        .shadow(radius: 10)
    }
}

#Preview {
    CollapsedPickerView(title: "Who", description: "Add guests")
}
