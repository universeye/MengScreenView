//
//  GeometryScrollView.swift
//  MengLogInScreen
//
//  Created by Terry Kuo on 2021/4/17.
//

import SwiftUI

struct GeometryScrollView: View {
    
    var colors : [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row # \(index)")
                            .font(.title)
                            .frame(width: fullView.size.width)
                            .background(self.colors[index % 7])
                            .rotation3DEffect(
                                .degrees(Double(geo.frame(in: .global).minY - fullView.size.height / 2) / 5),
                                axis: (x: 0.0, y: 1.0, z: 0.0))
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

struct GeoHorizontal: View {
    
    var colors : [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader(alignment: .center) { fullView in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<50) { index in
                        GeometryReader(alignment: .center) { geo in
                            Rectangle()
                                .fill(self.colors[index % 7])
                                .frame(height: 150)
                                .rotation3DEffect(
                                    .degrees(-Double(geo.frame(in: .global).midX - fullView.size.width / 2) / 10),
                                    axis: (x: 0.0, y: 1.0, z: 0.0))
                        } //GeometryReader
                        .frame(width: 150)
                    } //ForEach
                } //HStack
                .padding(.horizontal, (fullView.size.width - 150) / 2)
            } //ScrollView
        } //GeometryReader
        .ignoresSafeArea()
    } //body
} //GeoHorizontal

struct GeometryScrollView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryScrollView()
        GeoHorizontal()
    }
}
