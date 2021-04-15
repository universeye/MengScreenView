//
//  SocialView.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/15.
//

import SwiftUI

struct SocialView: View {
    
    var socialMedia: String = "instagram"
    
    var body: some View {
        HStack {
            Image(socialMedia)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.white.opacity(0.5))
                .frame(width: 80)
                .animation(.spring())
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

struct SocialView_Previews: PreviewProvider {
    static var previews: some View {
        SocialView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
