//
//  MainView.swift
//  Sport-Club-B3
//
//  Created by Eden MALO on 20/06/2022.
//

import SwiftUI
import TabBar

struct MainView: View {
    private enum Item: Int, Tabbable {
        case first = 0
        case second
        case third
        
        var icon: String {
            switch self {
                case .first: return "house.fill"
                case .second: return "newspaper.fill"
                case .third: return "person.fill"
            }
        }
        
        var title: String {
            switch self {
                case .first: return "First"
                case .second: return "Second"
                case .third: return "Third"
            }
        }
    }
    
    @State private var selection: Item = .first
    @State private var visibility: TabBarVisibility = .visible
    
    var body: some View {

        TabBar(selection: $selection, visibility: $visibility) {
            ContentView()
                .tabItem(for: Item.first)
            
            AllNewsView()
                .tabItem(for: Item.second)
            
            ProfilView()
                .tabItem(for: Item.third)
        }
        .tabBar(style: CustomTabBarStyle())
        .tabItem(style: CustomTabItemStyle())
        
        
        //        TabView {
        //            ContentView()
        //                .tabItem {
        //                    Label("Accueil", systemImage: "house.fill")
        //                }
        //
        //            AllNewsView()
        //                .tabItem {
        //                    Label("Actualités", systemImage: "newspaper.fill")
        //                }
        //        }
    }
}

struct CustomTabItemStyle: TabItemStyle {
    
    public func tabItem(icon: String, title: String, isSelected: Bool) -> some View {
        ZStack {
            if isSelected {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 40.0, height: 40.0)
            }
            
            Image(systemName: icon)
                .foregroundColor(isSelected ? Color("primaryColor") : .white)
                .frame(width: 32.0, height: 32.0)
        }
        .padding(.vertical, 8.0)
    }
    
}

struct CustomTabBarStyle: TabBarStyle {
    
    @StateObject var gD = GlobalData()
    
    public func tabBar(with geometry: GeometryProxy, itemsContainer: @escaping () -> AnyView) -> some View {
        itemsContainer()
            .background(Color("primaryColor"))
            .cornerRadius(25.0)
            .frame(height: gD.heightTabBar)
            .padding(.horizontal, 64.0)
            .padding(.bottom, 8.0 + geometry.safeAreaInsets.bottom)
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
