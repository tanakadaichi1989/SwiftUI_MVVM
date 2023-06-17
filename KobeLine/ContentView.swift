//
//  ContentView.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: StationViewModel
    init(viewModel: StationViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            NavigationView {
                listView
            }
        }
    }
    
    private var listView: some View {
        List(viewModel.stations){ station in
            HStack {
                StationNumberView(station: station)
                StationView(station: station)
            }
        }
    }
}
