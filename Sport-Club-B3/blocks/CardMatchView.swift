//
//  CardMatchView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 07/06/2022.
//

import SwiftUI

struct CardMatchView: View {
    var match: Match
    var league: League
    
    @StateObject var gD = GlobalData()
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text(league.name + " - " + String(match.numDaysLeague) + "ème joumée")
                .padding()
                .font(.subheadline)
                .frame(
                    maxWidth: .infinity,
                   alignment: .leading
                )
                .background(Color.black.opacity(0.2))
            
            HStack(alignment: .center, spacing: 0) {
                VStack(alignment: .center, spacing: 0) {
//                    RoundedPicture(
//                        imageUrl: "logo",
//                        size: 60
//                    )
//                    .padding()
                    
                    if Int(gD.allSetting[0].result) == match.home.id {
                        // TMP
                        RoundedPicture(
                            imageUrl: "logo",
                            size: 60
                        )
                        .padding()
                        // END TMP
                        
                        if match.pointsHomeTeam > match.pointsOutsideTeam {
                            Text("🎉")
                                .bold()
                                .textCase(.uppercase)
                        } else if match.pointsHomeTeam < match.pointsOutsideTeam {
                            Text("😭")
                                .bold()
                                .textCase(.uppercase)
                        }
                    } else {
                        Text(match.home.name)
                            .bold()
                            .foregroundColor(.black)
                            .textCase(.uppercase)
                            .lineLimit(1)
                    }
                }
                .frame(maxWidth: .infinity)
                
                InformationMatchView(match: match)
                    .frame(maxWidth: .infinity)
                
                VStack(alignment: .center, spacing: 0) {
//                    RoundedPicture(
//                        imageUrl: "caen",
//                        size: 60
//                    )
//                    .padding()
                    
                    if Int(gD.allSetting[0].result) == match.outside.id {
                        // TMP
                        RoundedPicture(
                            imageUrl: "logo",
                            size: 60
                        )
                        .padding()
                        // END TMP
                        
                        if match.pointsHomeTeam < match.pointsOutsideTeam {
                            Text("🎉")
                                .bold()
                                .textCase(.uppercase)
                        } else if match.pointsHomeTeam > match.pointsOutsideTeam {
                            Text("😭")
                                .bold()
                                .textCase(.uppercase)
                        }
                    } else {
                        Text(match.outside.name)
                            .bold()
                            .foregroundColor(.black)
                            .textCase(.uppercase)
                            .lineLimit(1)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 10)
            .frame(width: .infinity, alignment: .center)
        }
        .padding(.bottom, 20)
        .background(Color("bgColor"))
    }
}

//struct CardMatchView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardMatchView()
//            .previewLayout(.sizeThatFits)
//            .environment(\.locale, Locale(identifier: "fr"))
//            .previewInterfaceOrientation(.landscapeRight)
//    }
//}
