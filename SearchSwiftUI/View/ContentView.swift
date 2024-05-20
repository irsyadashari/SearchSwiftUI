//
//  ContentView.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            FavoritesView()
                .tabItem {
                    Image(systemName: "star")
                    Text("Favorites")
                }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewModel())
}
