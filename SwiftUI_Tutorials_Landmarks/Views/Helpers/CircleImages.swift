//
//  CircleImages.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/01/02.
//

import SwiftUI

struct CircleImages: View {
    var image: Image
    
    var body: some View {
        //image load
        image
            .clipShape(Circle())    //shape
            .overlay {
                //circle border
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)    //shadow
    }
}

struct CircleImages_Previews: PreviewProvider {
    static var previews: some View {
        CircleImages(image: Image("turtlerock"))
    }
}
