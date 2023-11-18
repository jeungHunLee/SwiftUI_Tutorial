//
//  Model.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/01/02.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")    //프로퍼티 값 변경을 알리는 @Published 속성
    var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter{ $0.isFeatured }
    }
    
    var categories: [String: [Landmark]] {
        Dictionary (
            grouping: landmarks, by: { $0.category.rawValue }     //landmarks 각 요소의 Array를 value로 하고 각 요소의 rawValue를 key로 하는 딕셔너리 생성
        )
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
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
