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
            List(viewModel.stations,id: \.self){ station in
                HStack {
                    StationNumberView(station: station)
                    StationView(station: station)
                }
            }
        }
    }
}
