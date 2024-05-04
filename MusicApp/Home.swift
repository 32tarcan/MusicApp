//
//  Home.swift
//  MusicApp
//
//  Created by Sakans on 4.05.2024.
//

import SwiftUI

struct Home: View {
    
    @State private var expandSheet = false
    @Namespace private var animation
    
    var body: some View {
        TabView {
            header
        }
    }
    
    var header: some View {
        HStack {
            Text("Good morning moods✨")
        }
        .frame(width: .infinity, height: 60)
        .padding(.horizontal)
    }
}

#Preview {
    Home()
        .preferredColorScheme(.dark)
}
