//
//  OnBoardView.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/15.
//

import SwiftUI

struct OnBoardView: View {

    var body: some View {
        ZStack {
            Constant.onBoardBackGround.ignoresSafeArea()
            Image("—Pngtree—transparent bubble glass ball_5422539拷貝")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            TabView {
                OnBoardCardView()
                OnBoardCardView()
            }
            .tabViewStyle(PageTabViewStyle())
        }
            
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
