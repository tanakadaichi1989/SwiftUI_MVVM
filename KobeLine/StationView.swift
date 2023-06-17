//
//  StationView.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import SwiftUI

struct StationView: View {
    var station: Station
    var body: some View {
        VStack(alignment: .leading) {
            Text(station.name)
                .font(.body)
                .fontWeight(.bold)
            Text(station.nameEnglish)
                .font(.caption)
        }
    }
}

struct StationView_Previews: PreviewProvider {
    static var previews: some View {
        StationView(station: StationViewModel().stations[0])
    }
}
