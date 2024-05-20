//
//  FavoritesView.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var favoritedItems: [Item] {
        viewModel.favoritedItem()
    }
    
    var body: some View {
        VStack {
            if favoritedItems.isEmpty {
                EmptyResultView(title: "No Favorite Items", description: "Please Add Item to favorites")
            } else {
                NavigationStack {
                    List(favoritedItems, id: \.self) { item in
                        ProductCellView(item: item)
                    }
                }
            }
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(ViewModel())
}
