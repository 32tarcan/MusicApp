//
//  MusicInfo.swift
//  MusicApp
//
//  Created by Sakans on 4.05.2024.
//

import SwiftUI

struct MusicInfo: View {
    
    @Binding var expandSheet: Bool
    var animation: Namespace.ID
    
    var body: some View {
        HStack(spacing: 0) {
            //
            ZStack {
                if !expandSheet {
                    GeometryReader {
                        let size = $0.size
                        Image("music 1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: size.width, height: size.height)
                            .clipShape(.rect(cornerRadius: 10, style: .continuous))
                    }
                    .matchedGeometryEffect(id: "SONGCOVER", in: animation)
                }
            }
            .frame(width: 55, height: 55)
            
            Text("Song Title")
                .fontWeight(.semibold)
                .lineLimit(1)
                .padding(.horizontal, 15)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
