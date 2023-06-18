//
//  Station.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import Foundation
import SwiftUI

struct Station: Hashable, Codable,Identifiable {
        let id, numbering: String
        let line: Line
        let name, nameEnglish, latitude, longitude: String
        let isFavorite: Bool
    
        enum Line: String, Codable {
            case kobe = "Kobe"
        }
}
