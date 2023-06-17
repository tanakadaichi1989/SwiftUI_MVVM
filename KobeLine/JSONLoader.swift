//
//  JSONLoader.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import Foundation

class JSONLoader {
    private static var instance: JSONLoader = JSONLoader()
    private init(){}
    public static func getInstance() -> JSONLoader { return JSONLoader.instance }
    
    func load<T: Decodable>(_ filename: String) -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }


        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }


        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}
