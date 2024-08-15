//
//  LoginButton.swift
//  Airbnb
//
//  Created by Luiz Vasconcellos on 14/08/24.
//

import SwiftUI

struct LoginButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Log in")
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    LoginButton()
}
