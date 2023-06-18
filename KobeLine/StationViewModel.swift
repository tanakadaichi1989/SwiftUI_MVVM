//
//  StationViewModel.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import Foundation
import SwiftUI

class StationViewModel: ObservableObject {
    private var loader: JSONLoader = JSONLoader.getInstance()
    @Published var stations: [Station] = []
    
    init(){
        do {
            stations = try loader.load("Station_Kobe.json")
        } catch {
            stations = []
        }
    }
}
