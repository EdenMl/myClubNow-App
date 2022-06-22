//
//  OneNewsView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 22/06/2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct OneNewsView: View {
    
    var news: News
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var backButton : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Text("Retour") // translated Back button title
        }
    }
    
    var body: some View {
        ZStack {
            Color("primaryColor")
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    if (news.pictureUrl != nil) {
                        WebImage(url: news.pictureUrl)
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 310)
                            .frame(maxWidth: UIScreen.main.bounds.width)
                            .clipped()
                    }
                    
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text(news.title)
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .fontWeight(.heavy)
                                .lineLimit(3)
                                .padding(.vertical, 15)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        
                        Text(news.content)
                            .multilineTextAlignment(.leading)
                            .font(.body)
                            .foregroundColor(Color.white.opacity(0.8))
                            .padding(.bottom, 25)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.horizontal, 20)

                    Spacer()
                }
                .frame(maxWidth: .infinity)
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: backButton)
        }
    }
}
