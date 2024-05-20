//
//  SearchView.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    @EnvironmentObject var viewModel: ViewModel
    
    var searchedItems: [Item] {
        viewModel.searchItem(name: searchText)
    }
    
    var body: some View {
        VStack {
            SearchBarView(searchText: $searchText)
            
            if searchedItems.isEmpty {
                EmptyResultView(title: "No Items Found.", description: "Please change your search term.")
            } else {
                NavigationStack {
                    List(searchedItems, id: \.self) { item in
                        ProductCellView(item: item)
                    }
                }
            }
        }
    }
}

struct SearchBarView: View {
    @Binding var searchText: String
    
    var body: some View {
        TextField("Search", text: $searchText)
            .padding(.horizontal)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

#Preview {
    SearchView()
        .environmentObject(ViewModel())
}
