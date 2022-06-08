//
//  SquarePicture.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 08/06/2022.
//

import SwiftUI

struct SquarePicture: View {
    var imageUrl: String
    var size: CGFloat
    var body: some View {
        Image(imageUrl)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size, alignment: .center)
            .clipShape(Rectangle())
            .cornerRadius(6)
    }
}

struct SquarePicture_Previews: PreviewProvider {
    static var previews: some View {
        SquarePicture(imageUrl: "img-bg-team", size: 80)
            .previewLayout(.sizeThatFits)
    }
}



