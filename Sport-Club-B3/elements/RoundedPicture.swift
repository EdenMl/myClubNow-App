//
//  RoundedPicture.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 18/05/2022.
//

import SwiftUI

struct RoundedPicture: View {
    var imageUrl: String
    var size: CGFloat
    var body: some View {
        Image(imageUrl)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size, alignment: .center)
            .clipShape(Circle())
    }
}

struct RoundedPicture_Previews: PreviewProvider {
    static var previews: some View {
        RoundedPicture(imageUrl: "img-bg-team", size: 80)
            .previewLayout(.sizeThatFits)
    }
}



