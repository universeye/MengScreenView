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
    
    var background = LinearGradient(gradient: Gradient(stops: [
                                                        .init(color: Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)), location: 0),
                                                        .init(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), location: 1)]), startPoint: UnitPoint(x: 0.5, y: -3.061671314629196e-17), endPoint: UnitPoint(x: 0.5, y: 0.999999999999))
    
    
    
    var body: some View {
        ZStack {
            background.ignoresSafeArea()
            ZStack {
                
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
                
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
