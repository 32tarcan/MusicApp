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
        }.overlay {
            if expandSheet {
                
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
                        // Music Info
                    }.matchedGeometryEffect(id: "BACKGROUNDVIEW", in: animation)
            }
        }
        .frame(height: 80)
        .overlay(alignment: .bottom) {
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(height: 1)
                .offset(y: -5)
        }
        .offset(y: -59)
    }
    
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
