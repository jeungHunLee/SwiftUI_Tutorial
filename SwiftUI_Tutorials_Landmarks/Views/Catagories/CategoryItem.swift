//
//  CategoryItem.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/02/23.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)    //navigationlink의 label로 전달할때 original 색감으로 rendering
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.black)    //navigationlink의 label로 전달된 Text는 accent color
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
