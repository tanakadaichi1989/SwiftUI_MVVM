//
//  ContentView.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: StationViewModel
    var body: some View {
        VStack {
            NavigationView {
                List(viewModel.stations){ station in
                    HStack {
                        StationNumberView(station: station)
                        StationView(station: station)
                    }
                }
                .navigationTitle("神戸線 Kobe Line")
                .navigationBarTitleDisplayMode(.inline)
            }
            
        }
    }
}
