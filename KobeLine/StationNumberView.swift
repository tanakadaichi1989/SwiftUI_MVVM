//
//  StationNumberView.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import SwiftUI

struct StationNumberView: View {
    var station:Station
    var body: some View {
        ZStack{
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 2))
                .frame(width: 30,height: 30)
                .foregroundColor(.blue)
            VStack(spacing: 0) {
                Text("HK")
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(0)
                Text(station.numbering)
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(0)
            }
        }
    }
}
