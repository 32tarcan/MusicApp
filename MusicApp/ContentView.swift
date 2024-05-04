//
//  ContentView.swift
//  MusicApp
//
//  Created by Sakans on 4.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expandSheet = false
    @Namespace private var animation
    
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(.ultraThickMaterial, for: .tabBar)
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            Text("Playlists")
                .tabItem {
                    Image(systemName: "play.rectangle.on.rectangle")
                    Text("Playlists")
                }
        }
        .tint(.white)
        .safeAreaInset(edge: .bottom) {
            // Custom Bottom Sheet
            CustomBottomSheet()
        }.overlay {
            if expandSheet {
                MusicView(expandSheet: $expandSheet, animation: animation)
            }
        }
    }
    
    
    @ViewBuilder
    func CustomBottomSheet() -> some View {
        ZStack {
            if expandSheet {
                Rectangle()
                    .fill(.clear)
            } else {
                Rectangle()
                    .fill(.ultraThickMaterial)
                    .overlay {
                        MusicInfo(expandSheet: $expandSheet, animation: animation)
                    }.matchedGeometryEffect(id: "BACKGROUNDVIEW", in: animation)
            }
        }
        .frame(height: 80)
        .offset(y: -49)
        }
        
    }

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
