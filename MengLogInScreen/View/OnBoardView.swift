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
                Group {
                    OnBoardCardView()
                    OnBoardCardView()
                        
                }
                .offset(y: 40)
                
            }
            .offset(y: -40)
            .tabViewStyle(PageTabViewStyle())
            
            VStack {
                HStack {
                    Image("aquarelle-bubble-gradient-instagram-liquid-pink-watercolour-liquid-bubble-png-512_512")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
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
