//
//  SwiftUI_Tutorials_LandmarksApp.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/01/02.
//

import SwiftUI

@main
struct SwiftUI_Tutorials_LandmarksApp: App {
    @StateObject private var modelData = ModelData()    //view의 생명 주기 동안 생성되는 인스턴스를 저장할 property wrapper 변수
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)    //subview에서 인스턴스를 사용할 수 있게함
        }
    }
}
