//
//  JSONLoader.swift
//  KobeLine
//
//  Created by 田中大地 on 2023/06/17.
//

import Foundation
import Combine

class JSONLoader {
    private static var instance: JSONLoader = JSONLoader()
    private init(){}
    public static func getInstance() -> JSONLoader { return JSONLoader.instance }
    
    func load<T: Decodable>(_ filename: String) throws -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            throw JSONLoaderError.cantFindFile
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            throw JSONLoaderError.cantLoadFile
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw JSONLoaderError.cantParseFile
        }
    }
    
    enum JSONLoaderError:Error {
        case cantFindFile
        case cantLoadFile
        case cantParseFile
    }
}
