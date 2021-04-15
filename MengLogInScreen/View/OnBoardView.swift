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
                .hueRotation(Angle(degrees: hueFunc()))
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
                SocialView(socialMedia: socialFunc())
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    func hueFunc() -> Int {
        withAnimation {
            if tagNumber == 0 {
                return 80
            } else if tagNumber == 1{
                return 150
            } else {
                return 230
            }
        }
    }
    
    func socialFunc() -> String {
        withAnimation(.linear(duration: 0.8)) {
            if tagNumber == 0 {
                return "youtube"
            } else if tagNumber == 1 {
                return "instagram"
            } else {
                return "twitter"
            }
        }
    }
    
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
