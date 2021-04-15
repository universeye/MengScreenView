//
//  OnBoardCardView.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/15.
//

import SwiftUI
import SwiftUIX

struct OnBoardCardView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16 ) {
                Text("120 HOURS OF VIDEO")
                    .font(.footnote, weight: .semibold)
                    .foregroundColor(Color.white.opacity(0.8))
                Constant.textGradient.frame(height: 140)
                    .mask(Text("Learn \ndesign \nand code")
                           
                            .font(.largeTitle)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading))
                
                Text("Learn by building real apps using Swift, React, Flutter and more. Design files and source code are included for each cource")
                    .font(.subheadline)
                    .foregroundColor(Color.white.opacity(0.8))
            }
            
            .padding(30)
            .background(Constant.onBoardGradient)
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .stroke(Constant.strokeGradient, lineWidth: 1).blendMode(.overlay)
            .overlay(RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .stroke(Constant.strokeGradient, lineWidth: 2).blur(radius: 7)) //second overlay on top of the first overlay and use the blur to make the glow effect
                        
                        
            )
            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue.opacity(0)]), startPoint: .top, endPoint: .bottom))))
            .padding(20)
        }
        .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue.opacity(0)]), startPoint: .top, endPoint: .bottom))))
        .padding(20)
//            .frame(width: 300, height: 500)
//            .padding()
        
//            .overlay(RoundedRectangle(cornerRadius: 16, style: .continuous).stroke(Color.white.opacity(0.4)))
    }
}

struct OnBoardCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardCardView().previewLayout(.sizeThatFits)
    }
}
