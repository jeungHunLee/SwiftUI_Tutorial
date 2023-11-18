//
//  MapView.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/01/02.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()    //region instance
    
    var body: some View {
        Map(coordinateRegion: $region)
        //region 변수의 참조와 같은 binding 전달
        //the user interacts with the map, the map updates the region value to match the part of the map that’s currently visible in the user interface.
            .onAppear {    //view가 처음 load 될때 수행할 action
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
