//
//  Footer.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 18/05/2022.
//

import SwiftUI

//struct Footer: View {
//    var body: some View {
//        Text("Hello")
//    }
//}
//
//struct Footer_Previews: PreviewProvider {
//    static var previews: some View {
//        Footer()
//    }
//}

struct Footer: View {
  var body: some View {
    VStack {
      Text("Footer")
            .padding(5)
    }
    .background(
        RoundedRectangle(cornerRadius: 4.0)
            .foregroundColor(Color("primaryColor")))
  }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
            .previewLayout(.sizeThatFits)
    }
}
