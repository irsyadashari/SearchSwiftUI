//
//  SearchSwiftUIApp.swift
//  SearchSwiftUI
//
//  Created by Irsyad Ashari on 20/05/24.
//

import SwiftUI

@main
struct SearchSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = ViewModel()
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
