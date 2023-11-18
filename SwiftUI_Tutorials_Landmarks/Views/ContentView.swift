//
//  ContentView.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/01/02.
//

import SwiftUI

struct ContentView: View {
    @State private var seletion: Tab = .feature
    
    enum Tab {
        case feature
        case list
    }
    
    var body: some View {
        TabView(selection: $seletion) {
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)    //tag의 값과 selection 값 비교하여 해당 view load
            
            CategoryHome()
                .tabItem {
                    Label("featured", systemImage: "star")
                }
                .tag(Tab.feature)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
