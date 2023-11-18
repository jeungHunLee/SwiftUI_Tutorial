//
//  RotatedBadge.swift
//  SwiftUI_Tutorials_Landmarks
//
//  Created by 이정훈 on 2023/02/22.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)    //bottom을 중심으로 회전
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
