//
//  ContentView.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/9.
//

import SwiftUI

struct ContentView: View {
    
    
    //@State private var rect: CGRect = CGRect()
    @State private var appear = false
    @State var viewState = CGSize.zero //used for drag animation

    var body: some View {
        ZStack {
            Constant.backgroundGradient.ignoresSafeArea()
            //Text("some text").background(GeometryGetter(rect: $rect))
            // You can then use rect in other places of your view:
            //Rectangle().frame(width: 100, height: rect.height)
            
            EggView()
                .offset(x: appear ? -80 : -50, y: appear ? -100 : -180)
                .scaleEffect(appear ? 1.5 : 1)
                .onAppear  {
                    withAnimation(.linear(duration: 3)) {
                        appear = true
                    }
                }
            
            LogInCardView()
                .offset(x: viewState.width, y: viewState.height)
                .animation(.spring())
                .gesture(DragGesture()
                            .onChanged({ (value) in
                                        viewState = value.translation})
                            .onEnded({ (value) in
                                        viewState = .zero}))
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
