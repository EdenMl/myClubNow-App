//
//  ContentLastNews.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 08/06/2022.
//

import SwiftUI


struct ContentLastNews: View {
    @State var limit = 3
    
    @StateObject var gD = GlobalData()
    @EnvironmentObject var vm: UserStateViewModel

    @State private var isShowingDetailView = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {

            ForEach(0 ..< limit, id:\.self) { i in
                if (gD.allNews[i].acceptedRole <= vm.me.role) {
                    CardNewsMinify(news: gD.allNews[i])
                }
            }
            
            if gD.allNews.count > limit {
                Text("D'autres actualités sont disponibles")
                    .italic()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .foregroundColor(.black)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }
            
            // NavigationLink(destination: AllNewsView(), isActive: $isShowingDetailView) { EmptyView() }
//            Button("Toutes les actualités") {
//                print("CLIC")
//                self.isShowingDetailView = true
//            }
//                .font(.system(size: 12))
//                .padding(.vertical, 10)
//                .padding(.horizontal, 25)
//                .textCase(.uppercase)
//                .scaledToFill()
//                .minimumScaleFactor(0.5)
//                .lineLimit(1)
//                .foregroundColor(.white)
//                .background(Color.black)
//                .cornerRadius(4)
        }
        .padding()
        .background(.white)
        .padding(.bottom, 20.0)
    }
}

struct ContentLastNews_Previews: PreviewProvider {
    static var previews: some View {
        ContentLastNews()
            .previewLayout(.sizeThatFits)
    }
}
