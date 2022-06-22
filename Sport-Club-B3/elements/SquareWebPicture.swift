//
//  SquareWebPicture.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 22/06/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct SquareWebPicture: View {
    var imageUrl: URL
    var size: CGFloat
    var body: some View {
        WebImage(url: imageUrl)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: size, height: size, alignment: .center)
            .clipShape(Rectangle())
            .cornerRadius(6)
    }
}

//struct SquareWebPicture_Previews: PreviewProvider {
//    static var previews: some View {
//        SquarePicture(imageUrl: "img-bg-team", size: 80)
//            .previewLayout(.sizeThatFits)
//    }
//}
