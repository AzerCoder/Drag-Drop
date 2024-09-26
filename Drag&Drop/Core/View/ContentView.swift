//
//  ContentView.swift
//  Drag&Drop
//
//  Created by A'zamjon Abdumuxtorov on 26/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{
            let safeArea = $0.safeAreaInsets
            
            Image(.fon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .blur(radius: 40, opaque: true)
                .overlay{
                    Rectangle()
                        .fill(.black.opacity(0.25))
                }
                .ignoresSafeArea()
            
            Home(safeArea:safeArea)
        }
    }
}

#Preview {
    ContentView()
}
