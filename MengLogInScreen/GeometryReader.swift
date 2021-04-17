//
//  GeometryReader.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/17.
//

import SwiftUI

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
                .background(Color.green)
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            GeometryReader(alignment: .center) { geo in
                Text("Center")
                    .background(Color.blue)
                    .onTapGesture {
                        print("Global Center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY )")
                        print("Custom Center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                        print("Local Center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY )")
                    }
            }
            .background(Color.orange)
            Text("Right")
        }
    }
    
}

struct GeometryReader2: View {
    var body: some View {
        OuterView()
            .background(Color.red)
            .coordinateSpace(name: "Custom")
        //        GeometryReader(alignment: .center) { geo in
        //            Text("width: \(geo.size.width)")
        //                .frame(width: geo.size.width * 0.9, height: 40)
        //                .background(Color.red)
        //        }
        //        .background(Color.green)
    }
}

struct GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader2()
    }
}
