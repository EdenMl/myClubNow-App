//
//  RecapTeamView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 18/05/2022.
//

import SwiftUI

struct RecapTeamView: View {
    var body: some View {
            HStack(alignment: .center, spacing: 0) {
                RoundedPicture(
                    imageUrl: "logo",
                    size: 80
                ).padding()

                VStack(alignment: .leading, spacing: 15) {
                    Text("2e")
                        .font(.title)
                        .bold()
                        .scaledToFill()
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("37 POINTS")
                            .font(.headline)
                            .bold()
                            .foregroundColor(.secondary)
                            .scaledToFill()
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                        
                        Text("J 26 | G 17 | N 3 | P 6")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(.secondary)
                            .scaledToFill()
                            .minimumScaleFactor(0.5)
                            .lineLimit(1)
                    }
                    
                }.padding()
                
                VStack {
                    Image("league")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 80, alignment: .center)
                        .padding(.horizontal, 5)
                    
                        
                    Text("2021/22")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .scaledToFill()
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }.padding()
                
                Spacer()
            }
            // HStack : width 100 % with .frame
            /* .frame(
              minWidth: 0,
              maxWidth: .infinity,
              alignment: .topLeading
            ) */
            .padding(.vertical, 20)
            .padding(.horizontal, 10)
            .background(Color("primaryColor").opacity(0.3))
            
        }
}

struct RecapTeamView_Previews: PreviewProvider {
    static var previews: some View {
        RecapTeamView()
            .previewLayout(.sizeThatFits)
    }
}
