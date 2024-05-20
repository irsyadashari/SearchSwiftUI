//
//  FavoritesView.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Favorites View")
                    .font(.largeTitle)
                Spacer()
            }
            .navigationTitle("Favorites View")
        }
    }
}

#Preview {
    FavoritesView()
}
