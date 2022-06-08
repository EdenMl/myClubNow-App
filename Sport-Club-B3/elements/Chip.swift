//
//  Chip.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 08/06/2022.
//

import SwiftUI

struct Chip: View {
    var label: String
    var isSolid: Bool

    var body: some View {
        VStack {
            
            Text(label)
                .fontWeight(.medium)
                .font(.system(size: 10))
                .textCase(.uppercase)
            
                .padding(.vertical, 5)
                .padding(.horizontal, 15)
            
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .lineLimit(1)
            
                .frame(maxWidth: .infinity)
            
                .foregroundColor(Color.white)
                .background(Color("primaryColor"))
                .clipShape(Capsule())
        }
        .frame(maxWidth: .infinity)
    }
}

struct Chip_Previews: PreviewProvider {
    static var previews: some View {
        Chip(label: "Hello", isSolid: true)
            .previewLayout(.sizeThatFits)
    }
}
