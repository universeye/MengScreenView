//
//  ContentView.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyCustomShape()
                .fill(AngularGradient(
                    gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0, green: 0.7911666631698608, blue: 0.8416666388511658, alpha: 0.3799999952316284)), location: 0.17238876223564148),
                .init(color: Color(#colorLiteral(red: 0.9601541757583618, green: 0.9708333611488342, blue: 0.43687498569488525, alpha: 0.7200000286102295)), location: 0.328125),
                .init(color: Color(#colorLiteral(red: 0.7692121267318726, green: 0.42349088191986084, blue: 0.10436362028121948, alpha: 0.6600000262260437)), location: 0.528412401676178),
                .init(color: Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 0.6200000047683716)), location: 0.7730047106742859),
                .init(color: Color(#colorLiteral(red: 0.5226666331291199, green: 0, blue: 0.9333333373069763, alpha: 1)), location: 0.9166666865348816)]),
                    center: UnitPoint(x: 0.5, y: 0.49999999999999994)
                  ))
                .frame(width: 300, height: 300, alignment: .center)
            Text("Hello, world!")
                .padding()
        }
    }
}


struct MyCustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.48416*width, y: 0.07692*height))
        path.addCurve(to: CGPoint(x: 0.00452*width, y: 0.66272*height), control1: CGPoint(x: 0.36501*width, y: 0.12821*height), control2: CGPoint(x: 0.00452*width, y: 0.34911*height))
        path.addCurve(to: CGPoint(x: 0.95023*width, y: 0.51479*height), control1: CGPoint(x: 0.00452*width, y: 1.12426*height), control2: CGPoint(x: 0.76199*width, y: 1.13018*height))
        path.addCurve(to: CGPoint(x: 0.48416*width, y: 0.07692*height), control1: CGPoint(x: 1.13846*width, y: -0.10059*height), control2: CGPoint(x: 0.71795*width, y: -0.03353*height))
        path.closeSubpath()
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
