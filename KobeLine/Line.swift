//
//  Line.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import Foundation
import SwiftUI

enum Line: String {
    case Kobe
    
    var description: String {
        switch(self){
        case.Kobe: return "神戸線"
        }
    }
    
    var color: Color {
        switch(self){
        case .Kobe: return .blue
        }
    }
}
