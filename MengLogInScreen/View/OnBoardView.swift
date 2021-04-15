//
//  OnBoardView.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/15.
//

import SwiftUI

struct OnBoardView: View {
    
    @State var tagNumber = 0
    
    var body: some View {
        ZStack {
            Constant.onBoardBackGround.ignoresSafeArea()
            EggView()
                .offset(x: -90, y: 380)
            Image("—Pngtree—transparent bubble glass ball_5422539拷貝")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(y: -420)
            
            TabView(selection: $tagNumber) {
                OnBoardCardView().tag(0) //first page
                OnBoardCardView().tag(1) //second page
                OnBoardCardView().tag(2) //third page
                
            }
            .tabViewStyle(PageTabViewStyle())
            
            VStack {
                if tagNumber == 0 {
                    SocialView(socialMedia: "youtube")
                } else if tagNumber  == 1 {
                    SocialView(socialMedia: "instagram")
                } else {
                    SocialView(socialMedia: "twitter")
                }
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
