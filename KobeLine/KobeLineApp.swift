//
//  KobeLineApp.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import SwiftUI

@main
struct KobeLineApp: App {
    @StateObject var viewModel = StationViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
